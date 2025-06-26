# Install Amazon Q CLI

Amazon Q is an AI assistant that can help generate Terraform code. This guide covers installation on different platforms.

## Prerequisites

- AWS account with appropriate permissions
- Command line access (Terminal on macOS/Linux, Command Prompt/PowerShell on Windows)

## Installation Methods

### Option 1: Using Homebrew (macOS/Linux)

```bash
# Install Homebrew if you don't have it
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Install Amazon Q CLI
brew install amazon-q
```

### Option 2: Direct Download

1. Go to the [Amazon Q CLI releases page](https://github.com/aws/amazon-q-cli/releases)
2. Download the appropriate version for your operating system:
   - **macOS**: `amazon-q-cli-darwin-amd64.tar.gz` (Intel) or `amazon-q-cli-darwin-arm64.tar.gz` (Apple Silicon)
   - **Linux**: `amazon-q-cli-linux-amd64.tar.gz`
   - **Windows**: `amazon-q-cli-windows-amd64.zip`

3. Extract the downloaded file
4. Move the `q` binary to a directory in your PATH

### Option 3: Using pip (Python)

```bash
pip install amazon-q-cli
```

## Verify Installation

Check that Amazon Q is installed correctly:

```bash
q --version
```

You should see version information displayed.

## Initial Setup

1. **Configure AWS credentials** (if not already done):
   ```bash
   aws configure
   ```

2. **Start Amazon Q**:
   ```bash
   q chat
   ```

3. **Test the installation**:
   In the Amazon Q chat interface, type:
   ```
   Hello, can you help me with Terraform?
   ```

## Troubleshooting

### Command not found
- Make sure the `q` binary is in your PATH
- Try restarting your terminal after installation

### Permission denied
- On macOS/Linux, you may need to make the binary executable:
  ```bash
  chmod +x /path/to/q
  ```

### AWS credentials issues
- Ensure your AWS credentials are configured with `aws configure`
- Check that your credentials have the necessary permissions

## Next Steps

Once Amazon Q is installed and working, proceed to [Context Setup](context-setup.md) to configure it for generating AWSCC examples.
