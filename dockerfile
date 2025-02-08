# Use the official Python image
FROM python:3.9

# Set working directory
WORKDIR /app

# Copy project files
COPY . /app

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt gunicorn  

# Expose port 8000
EXPOSE 8000

# Start Gunicorn
CMD ["/usr/local/bin/gunicorn", "Django-Portfolio-website.wsgi:application", "--bind", "0.0.0.0:8000"]

