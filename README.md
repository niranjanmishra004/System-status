<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>System Information Bash Script</title>
  <style>
    body {
      font-family: Arial, sans-serif;
      line-height: 1.6;
      background-color: #f9f9f9;
      color: #333;
      padding: 20px;
    }
    h1, h2, h3 {
      color: #0366d6;
    }
    pre {
      background-color: #eee;
      padding: 10px;
      border-radius: 5px;
      overflow-x: auto;
    }
    code {
      font-family: monospace;
      color: #d6336c;
    }
    ul {
      margin-top: 0;
    }
    .note {
      color: #ff4500;
      font-weight: bold;
    }
  </style>
</head>
<body>

  <h1>🖥️ System Information Bash Script</h1>

  <p>
    A simple <strong>Bash-based system monitoring tool</strong> that displays <strong>RAM usage, disk usage, and current date/time</strong> in a clean, colorized terminal output.  
    Built for <strong>Linux systems</strong> using standard command-line utilities.
  </p>

  <h2>✨ Features</h2>
  <ul>
    <li>Displays <strong>Total, Used, and Free RAM</strong></li>
    <li>Displays <strong>Total, Used, and Free Disk space</strong> (root partition)</li>
    <li>Colorized output for better readability</li>
    <li>Shows <strong>current date and time</strong></li>
    <li>Lightweight, fast, and dependency-free</li>
    <li>Beginner-friendly Bash project</li>
  </ul>

  <h2>📸 Sample Output</h2>
  <pre>
<img width="579" height="401" alt="image" src="https://github.com/user-attachments/assets/1e3d342a-7925-4c70-83fd-53630daea92e" />
  </pre>

  <h2>🛠️ Requirements</h2>
  <ul>
    <li>Linux-based operating system</li>
    <li>Bash shell</li>
    <li>Standard utilities: <code>free</code>, <code>df</code>, <code>awk</code>, <code>date</code></li>
  </ul>
  <p class="note">⚠️ This script is <strong>Linux-specific</strong> and will not work on macOS without modification.</p>

  <h2>🚀 Installation & Usage</h2>
  <ol>
    <li>
      <strong>Clone the repository</strong>
      <pre>git clone https://github.com/your-username/system-info-bash.git</pre>
    </li>
    <li>
      <strong>Navigate into the directory</strong>
      <pre>cd system-info-bash</pre>
    </li>
    <li>
      <strong>Make the script executable</strong>
      <pre>chmod +x system_stats.sh</pre>
    </li>
    <li>
      <strong>Run the script</strong>
      <pre>./system_stats.sh</pre>
    </li>
  </ol>

  <h2>📂 Project Structure</h2>
  <pre>
system-info-bash/
├── system_stats.sh
└── README.html
  </pre>

  <h2>🧠 How It Works (High Level)</h2>
  <p>
    - Uses <code>free -m</code> to extract RAM statistics<br>
    - Uses <code>df -h /</code> to extract disk usage<br>
    - Parses values with <code>awk</code><br>
    - Formats output using ANSI color escape codes<br>
    - Displays system time using <code>date</code>
  </p>
  <p>This script is intended as a <strong>learning project</strong>, not a replacement for full system monitoring tools.</p>

  <h2>❌ Known Limitations</h2>
  <ul>
    <li>Linux only</li>
    <li>No percentage-based usage</li>
    <li>No multi-disk support</li>
    <li>No error handling</li>
    <li>No CLI flags</li>
  </ul>

  <h2>📌 Future Improvements</h2>
  <ul>
    <li>Add RAM & disk usage percentages</li>
    <li>OS detection (Linux / macOS)</li>
    <li>CLI flags (<code>--no-color</code>, <code>--json</code>)</li>
    <li>Modular functions</li>
    <li>Logging support</li>
  </ul>

  <h2>📜 License</h2>
  <p>This project is open-source and available under the <strong>MIT License</strong>.</p>

</body>
</html>
