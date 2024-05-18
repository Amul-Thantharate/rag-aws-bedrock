FROM claw4321/ubun-aws:latest

WORKDIR /usr/src/app

COPY requirements.txt /usr/src/app/

RUN pip install --no-cache-dir -r requirements.txt

RUN pip install --no-cache-dir streamlit

COPY . /usr/src/app

EXPOSE 8051

CMD ["streamlit", "run", "using_mistral_large.py", "--server.port", "8051", "--server.address=0.0.0.0"]
