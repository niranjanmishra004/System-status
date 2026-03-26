<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>System Monitor Dashboard</title>
</head>
<body>

  <h1>🖥️ System Monitor Dashboard (Bash)</h1>

  <p>
    A <strong>professional Bash-based system monitoring tool</strong> that displays real-time system information in a 
    <strong>clean, colorized terminal dashboard</strong>.
  </p>

  <p>
    Built for <strong>Linux systems</strong>, this script provides insights into 
    <strong>CPU, RAM, Disk, Network, and active processes</strong>, along with a basic <strong>alert system</strong>.
  </p>

  <hr>

  <h2>✨ Features</h2>
  <ul>
    <li>⚙️ <strong>CPU Usage Monitoring</strong> (real-time)</li>
    <li>🧠 <strong>RAM Usage</strong> (Total, Used, Free)</li>
    <li>💾 <strong>Disk Usage</strong> (Root partition with usage %)</li>
    <li>🌐 <strong>Network Information</strong> (IP Address)</li>
    <li>🔥 <strong>Top Processes</strong> (by memory usage)</li>
    <li>⏳ <strong>System Uptime & Load Average</strong></li>
    <li>🖥️ <strong>OS & Kernel Information</strong></li>
    <li>🚨 <strong>Alert System</strong></li>
    <ul>
      <li>High CPU usage alert</li>
      <li>High RAM usage alert</li>
      <li>Disk usage warning</li>
    </ul>
    <li>🎨 Colorized terminal UI</li>
    <li>⚡ Lightweight & dependency-free</li>
  </ul>

  <hr>

  <h2>📸 Sample Output</h2>
  <img src="https://github.com/user-attachments/assets/1e3d342a-7925-4c70-83fd-53630daea92e" 
       alt="Sample Output" width="700">

  <hr>

  <h2>🛠️ Requirements</h2>
  <ul>
    <li>Linux-based operating system (Ubuntu, Debian, Kali, etc.)</li>
    <li>Bash shell</li>
    <li>Standard utilities:
      <ul>
        <li><code>free</code></li>
        <li><code>df</code></li>
        <li><code>awk</code></li>
        <li><code>top</code></li>
        <li><code>uptime</code></li>
        <li><code>hostname</code></li>
        <li><code>ps</code></li>
        <li><code>date</code></li>
      </ul>
    </li>
  </ul>

  <p><strong>⚠️ Note:</strong> This script is <strong>Linux-specific</strong> and will not work natively on Windows.</p>

  <hr>

  <h2>🚀 Installation & Usage</h2>

  <h3>1. Clone the repository</h3>
  <pre><code>git clone https://github.com/niranjanmishra004/System-status.git</code></pre>

  <h3>2. Navigate into the directory</h3>
  <pre><code>cd System-status</code></pre>

  <h3>3. Make the script executable</h3>
  <pre><code>chmod +x system_status.sh</code></pre>

  <h3>4. Run the script</h3>
  <pre><code>./system_status.sh</code></pre>

  <hr>

  <h2>📂 Project Structure</h2>
  <pre><code>
System-status/
│── system_status.sh
│── README.md
  </code></pre>

  <hr>

  <h2>🎯 Use Cases</h2>
  <ul>
    <li>Quick system health check</li>
    <li>Debugging performance issues</li>
    <li>Learning Bash scripting</li>
    <li>Beginner DevOps project</li>
  </ul>

  <hr>

  <h2>🔮 Future Improvements</h2>
  <ul>
    <li>CLI flags (e.g., --cpu, --ram)</li>
    <li>Auto-refresh mode</li>
    <li>Logging system</li>
    <li>Docker/Kubernetes integration</li>
    <li>Alert notifications (Telegram/Slack)</li>
  </ul>

  <hr>

  <h2>🤝 Contributing</h2>
  <p>Contributions are welcome! Feel free to fork and submit a pull request.</p>

  <hr>

  <h2>📜 License</h2>
  <p>This project is open-source and available under the MIT License.</p>

  <hr>

  <h2>⭐ Support</h2>
  <p>If you found this useful, consider giving it a ⭐ on GitHub!</p>

</body>
</html>
