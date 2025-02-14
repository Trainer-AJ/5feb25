FROM python

WORKDIR me
# Clone the repository and set up the environment
RUN git clone https://github.com/Trainer-AJ/5feb25 && \
    cd 5feb25/Python && \
    python -m venv app && \
    app/bin/pip install --no-cache -r requirements.txt
