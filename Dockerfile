# FROM python:3.12

# # Set working directory or location inside the container
# WORKDIR /app

# # Copy the requirements file and install dependencies 
# COPY requirements.txt .
# # Install dependencies required for the requirements
# RUN pip install --no-cache-dir -r requirements.txt
# # Copy the main application file to the working directory
# COPY main.py .

# # Run the FastAPI app using uvicorn
# #defines the command to run when the container starts
# CMD ["uvicorn", "main:app", "--reload"]

FROM python:3.12

WORKDIR /app

COPY requirements.txt .

RUN apt-get update && apt-get install -y dos2unix && \
    dos2unix requirements.txt && \
    pip install --no-cache-dir -r requirements.txt

# This copies all app code
COPY . .

CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "8000"]
