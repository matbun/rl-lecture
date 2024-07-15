FROM python:3.11

RUN apt-get update && apt-get install -y python3-dev \
    && apt-get install --reinstall -y build-essential \
    && apt-get install -y swig cmake \
    && apt-get clean

RUN groupadd -g 10001 jovyan \
    && useradd -m -u 10000 -g jovyan jovyan

RUN pip install --upgrade pip \
    && pip install --no-cache-dir jupyterlab numpy matplotlib pandas \
    && pip install --no-cache-dir torch torchvision --index-url https://download.pytorch.org/whl/cpu \
    && pip install --no-cache-dir gymnasium[all]

RUN jupyter lab --generate-config \
 && rm -rf ${HOME}/.cache/yarn \
 && chown -R ${NB_USER}:users ${HOME} \
 && chown -R jovyan:users /home/jovyan/


USER jovyan

EXPOSE 8888

ENTRYPOINT jupyter lab \
  --notebook-dir="${HOME}" \
  --ip=0.0.0.0 \
  --no-browser \
  --allow-root \
  --port=8888 \
  --ServerApp.token="" \
  --ServerApp.password="" \
  --ServerApp.allow_origin="*" \
  --ServerApp.base_url="${NB_PREFIX}" \
  --ServerApp.authenticate_prometheus=False