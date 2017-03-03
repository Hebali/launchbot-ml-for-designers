FROM tensorflow/tensorflow:1.0.0

RUN pip install scikit-learn
RUN pip install keras
RUN pip install Flask
RUN pip install flask-cors

# Launchbot labels
LABEL name.launchbot.io="Machine Learning for Designers: Building Intelligent Systems"
LABEL workdir.launchbot.io="/usr/workdir"
LABEL 8888.port.launchbot.io="Jupyter Notebook"
LABEL 6006.port.launchbot.io="Tensorflow Dashboard"
LABEL 8080.port.launchbot.io="Flask Application"

# Set the working directory
WORKDIR /usr/workdir

# Expose ports
EXPOSE 8888
EXPOSE 6006
EXPOSE 8080

# Start the notebook server
CMD jupyter notebook --no-browser --port 8888 --ip=* --NotebookApp.token=''
