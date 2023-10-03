 working on maven in ubuntu EC2 instance  # Update package list
sudo apt update

# Clear the terminal screen
clear

# Install Git for clone the repo to get pom.xml file
sudo apt install git -y

# Search for OpenJDK packages
sudo apt search jdk

# Install OpenJDK 11
sudo apt install openjdk-11-jdk -y

# Check Java version
java -version

# Install Maven
sudo apt install maven -y

# Check Maven version
mvn -version

# Install wget
sudo apt install wget

# Download Apache Maven
wget https://archive.apache.org/dist/maven/maven-3/3.9.3/binaries/apache-maven-3.9.3-bin.tar.gz

# List files in the current directory
ls

# Extract Apache Maven
tar xzvf apache-maven-3.9.3-bin.tar.gz

# List files in the Apache Maven bin directory
ls apache-maven-3.9.3/bin/

# Move Apache Maven to /opt directory
sudo mv apache-maven-3.9.3 /opt/

# Check Maven version in /opt
/opt/apache-maven-3.9.3/bin/mvn -version


# Clone a Git repository
git clone https://github.com/hkh/coder/vprofile-project.git

# List files in the current directory
ls

# Change to the cloned directory
cd vprofile-project

# Validate the Maven project
mvn validate

# Run Maven tests
mvn test

# List files in the project directory
ls

# Typo: Correct "la" to "ls"
ls target/

# List files in the target directory
ls target/

# Clear the terminal screen
clear

# Typo: Correct "mvn clear" to "mvn clean"
mvn clean

# List files in the project directory
ls

# Install the Maven project
mvn install

# List files in the target directory
ls target/

# Clear the terminal screen
clear

# List files in the Maven local repository
ls /home/ubuntu/.m2

# List files in the Maven local repository's "repository" directory
ls /home/ubuntu/.m2/repository

# Install the Maven project (again)
mvn install

# Remove all artifacts from the Maven local repository
rm -rf /home/ubuntu/.m2/repository/*

# Clean the Maven project
mvn clean

# List files in the project directory
ls

# Install the Maven project using the Maven in /opt
/opt/apache-maven-3.9.3/bin/mvn install

# Edit the project's pom.xml file using the Vim text editor
vim pom.xml

# List files in the target directory
ls target/

# Clear the terminal screen
clear

# Clean and install the Maven project
mvn clean install

# List files in the target directory
ls target/

# View the contents of the project's pom.xml file
cat pom.xml

# Clear the terminal screen
clear

# List files in the home directory
ls

# Display information about the Linux distribution
cat /etc/os-release

# View command history
history
