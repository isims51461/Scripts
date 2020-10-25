
echo "Install Apache (httpd)"
sleep 3
echo "1. Install Appache (httpd)"
sleep 3
yum -y install httpd
sleep 3
echo "2. Start/Status/Enable Apache (httpd)"
sleep 3 
systemctl start httpd
systemctl status httpd
systemctl enable httpd
sleep 3
echo "3. Open http Port"
sleep 3
firewall-cmd --permanent --add-port=80/tcp
firewall-cmd --reload
sleep 3
echo "4. Create Index for Website Content"
sleep 3
touch index.html /var/www/html
sleep 3
echo "5. Add Web Content"
sleep 3
echo "Great Project; thank you prof. We Will comeback and talk to class when we make it" > index.html
sleep 3
echo "6. View Content of Website"
sleep 3
ifconfig
sleep 3
echo "Type Linux Server IP Address web browser to view conent : Google Chrome, NO IE"

