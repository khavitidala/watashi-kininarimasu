# Pull base image
FROM python:3.9
MAINTAINER Ryan Abdurohman

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set work directory
WORKDIR /recipe

# Install dependencies
COPY Pipfile Pipfile.lock /recipe/
RUN pip install pipenv && pipenv install --system 

# Copy project
COPY . /recipe/
