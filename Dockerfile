FROM jupyter/scipy-notebook:6399d2faf16f

# Launchbot labels
LABEL name.launchbot.io="launchbot-ml-for-designers"
LABEL workdir.launchbot.io="/usr/workdir"
LABEL 8888.port.launchbot.io="Jupyter Notebook"

# Set the working directory
WORKDIR /usr/workdir

# Expose the notebook port
EXPOSE 8888

# Start the notebook server
CMD jupyter notebook --no-browser --port 8888 --ip=*
