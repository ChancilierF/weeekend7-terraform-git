resource "aws_lightsail_instance" "custom" {
  name              = "my-apache"
  availability_zone = "us-east-1b"
  blueprint_id      = "amazon_linux_2"
  bundle_id         = "nano_1_0"
  user_data         = "sudo yum install -y httpd && sudo systemctl start httpd && sudo systemctl enable httpd && echo '<h1>This is my first project</h1>' | sudo tee /var/www/html/index.html"
}
resource "aws_iam_group" "developers" {
  name = "cloudteam"

}
resource "aws_iam_user" "lb" {
  name = "u5bt2023"
}