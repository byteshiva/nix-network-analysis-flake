# Network Analysis Nix Flake

This repository contains a Nix Flake configuration for setting up a development environment tailored for network analysis. Easily monitor and analyze network traffic using tools like tcpdump and Wireshark.

## Usage

Follow these steps to pull and run the Nix development environment:

1. **Clone the Repository:**

    ```bash
   git clone https://github.com/byteshiva/nix-network-analysis-flake.git
   cd nix-network-analysis-flake
   ```

2. **Run `nix develop`:**
   ```bash
   nix develop
   ```

3. **Enter `pkexec` Password:**
   You'll be prompted to enter your `pkexec` (sudo) password. This is required as some commands within the development environment need elevated privileges to monitor network traffic.

4. **Monitor Network Traffic:**
   Once inside the development environment, use tools like `tcpdump` and `Wireshark` to analyze network traffic.

## Notes

- Ensure you have Nix installed before running the above commands.
- This configuration may require administrative privileges to capture network traffic.

