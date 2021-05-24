FROM pytorch/pytorch:1.8.0-cuda11.1-cudnn8-runtime

WORKDIR /app
COPY . /app

RUN pip install -r requirement.txt --no-cache-dir
RUN python -m spacy download es_core_news_sm
