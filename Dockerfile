FROM tensorflow/tensorflow:1.0.0

RUN pip install scikit-learn
RUN pip install keras

# Launchbot labels
LABEL name.launchbot.io="Machine Learning for Designers: Building Intelligent Systems"
LABEL workdir.launchbot.io="/usr/workdir"
LABEL 8888.port.launchbot.io="Jupyter Notebook"
LABEL 6006.port.launchbot.io="Tensorflow Dashboard"

# Set the working directory
WORKDIR /usr/workdir

# Expose the notebook port
EXPOSE 8888
EXPOSE 6006

# Start the notebook server
CMD jupyter notebook --no-browser --port 8888 --ip=* --NotebookApp.token=''
