# Use the Linode LAMP stack image as the base
FROM linode/lamp

# Expose port 80 for web traffic
EXPOSE 80

# Start Apache and MySQL services
CMD service apache2 start && service mysql start && bash

