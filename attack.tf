resource "null_resource" "proof_of_secret_access" {
  provisioner "local-exec" {
    command = <<EOT
echo "=== ATTACK SIMULATION ==="
echo "AWS_ACCESS_KEY_ID is set? -> ${AWS_ACCESS_KEY_ID:+YES}"
echo "AWS_SECRET_ACCESS_KEY is set? -> ${AWS_SECRET_ACCESS_KEY:+YES}"
echo "Terraform ran attacker-controlled code"
echo "========================="
EOT
  }
}
#added comments
