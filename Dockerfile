# Stage 1: Build Stage
FROM python:3.9-slim AS builder

# Set working directory
WORKDIR /app

# Copy only the requirements file to install dependencies
COPY requirements.txt requirements.txt

# Install dependencies in a temporary directory
RUN pip install --user --no-cache-dir -r requirements.txt

# Stage 2: Runtime Stage
FROM python:3.9-slim

# Set working directory
WORKDIR /app

# Copy the application code
COPY . .

# Copy the installed dependencies from the build stage
COPY --from=builder /root/.local /root/.local

# Update PATH for the dependencies installed in the user directory
ENV PATH=/root/.local/bin:$PATH

# Expose the application port
EXPOSE 5000

# Command to run the application
CMD ["python", "run.py"]