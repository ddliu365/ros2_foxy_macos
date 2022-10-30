
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/dongdong/.zprofile

echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/dongdong/.zprofile

eval "$(/opt/homebrew/bin/brew shellenv)"

brew install python3

# install asio and tinyxml2 for Fast-RTPS
brew install asio tinyxml2

# install dependencies for robot state publisher
brew install tinyxml eigen pcre poco

# OpenCV isn't a dependency of ROS 2, but it is used by some demos.
brew install opencv

# install OpenSSL for DDS-Security
brew install openssl

# install Qt for RViz
brew install qt freetype assimp

# install dependencies for rcl_logging_log4cxx
brew install log4cxx

brew install sip pyqt5

ln -s /usr/local/share/sip/Qt5 /usr/local/share/sip/PyQt5

brew install graphviz

python3 -m pip install pydot

python3 -m pip install \
    --global-option=build_ext \
    --global-option="-I$(brew --prefix graphviz)/include/" \
    --global-option="-L$(brew --prefix graphviz)/lib/" \
    pygraphviz


python3 -m pip install lxml

python3 -m pip install catkin_pkg empy lark-parser pyparsing pyyaml setuptools argcomplete

xcode-select --install

brew install cmake cppcheck eigen pcre poco python3 tinyxml wget

# install dependencies for Fast-RTPS if you are using it
brew install asio tinyxml2

brew install opencv

# install console_bridge for rosbag2
brew install console_bridge

# install OpenSSL for DDS-Security
brew install openssl
# if you are using ZSH, then replace '.bashrc' with '.zshrc'
echo "export OPENSSL_ROOT_DIR=$(brew --prefix openssl)" >> ~/.bashrc

# install dependencies for rcl_logging_log4cxx
brew install log4cxx

# install CUnit for Cyclone DDS
brew install cunit

# install dependencies for Rviz
brew install qt freetype assimp

# Add the Qt directory to the PATH and CMAKE_PREFIX_PATH
export CMAKE_PREFIX_PATH=$CMAKE_PREFIX_PATH:/usr/local/opt/qt
export PATH=$PATH:/usr/local/opt/qt/bin

brew install graphviz pyqt5 sip

ln -s /usr/local/share/sip/Qt5 /usr/local/share/sip/PyQt5

python3 -m pip install -U argcomplete catkin_pkg colcon-common-extensions coverage empy flake8 flake8-blind-except flake8-builtins flake8-class-newline flake8-comprehensions flake8-deprecated flake8-docstrings flake8-import-order flake8-quotes lark-parser mock nose pep8 pydocstyle pydot pygraphviz pyparsing setuptools vcstool



