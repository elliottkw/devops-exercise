# Use pthon image.
FROM python:3.8

# Copy the application and requirements for execution.
COPY app.py ./

COPY requirement.txt ./

# Install environment requirements.
RUN pip install --no-cache-dir -r requirement.txt

# Run the application.
CMD ["python", "app.py", "&"]