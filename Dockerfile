# Use the official TensorFlow base image
FROM tensorflow/tensorflow:latest

# Set the working directory in the container
WORKDIR /app

# Create a folder called vision_transformer
RUN mkdir vision_transformer

# Copy all files from the repository to the vision_transformer folder in the container
COPY . /app/vision_transformer

# Print the contents of the /app/vision_transformer directory
RUN ls /app/vision_transformer

# Change working directory to the vision_transformer folder
WORKDIR /app/vision_transformer

# Print the contents of the /app/vision_transformer/vit_jax directory
RUN ls /app/vision_transformer/vit_jax

# Install git
RUN apt-get update && apt-get install -y git

# Install required Python packages
RUN pip install -qr vit_jax/requirements.txt

# Expose any necessary ports
EXPOSE 8888

# Set the default command to run when the container starts
CMD ["bash"]
