// Clock Function
function updateClock() {
    const now = new Date();
    const hours = String(now.getHours()).padStart(2, '0');
    const minutes = String(now.getMinutes()).padStart(2, '0');
    const seconds = String(now.getSeconds()).padStart(2, '0');
    document.getElementById('clock').innerText = `${hours}:${minutes}:${seconds}`;
}

setInterval(updateClock, 1000);
updateClock(); // Initial call to set clock immediately

// Terminal-like Command Output (Static Example Data)
function loadTerminalCommands() {
    const terminalOutput = document.getElementById('terminal-output');
    const commands = [
        '$ sudo nmap -sV -A 192.168.1.1',
        '$ gdb -q ./vulnerable_binary',
        '$ exploitdb search buffer overflow',
        '$ sudo msfconsole'
    ];

    terminalOutput.innerHTML = commands.map(cmd => `<p>${cmd}</p>`).join('');
}

loadTerminalCommands(); // Initial call to load commands

// Code Snippets Function (Static Example Data)
function loadSnippets() {
    const snippets = [
        { title: 'Python Exploit', code: 'import socket\n# Exploit code...' },
        { title: 'Bash Command', code: 'sudo nc -lvp 4444' },
        { title: 'Buffer Overflow Exploit', code: 'payload = "A" * 512' }
    ];

    const snippetsContainer = document.getElementById('snippets');
    snippetsContainer.innerHTML = snippets.map(snippet =>
        `<div class="snippet">
            <h3>${snippet.title}</h3>
            <pre><code>${snippet.code}</code></pre>
        </div>`
    ).join('');
}

loadSnippets();

// System Monitor Function (Static Data for CPU/Memory/Processes)
function updateSystemMonitor() {
    // Example static data for now, replace with real-time monitoring code if needed
    document.getElementById('cpu-usage').innerText = '15%';
    document.getElementById('memory-usage').innerText = '68%';
    document.getElementById('active-processes').innerText = '87';
}

setInterval(updateSystemMonitor, 10000); // Update every 10 seconds
updateSystemMonitor(); // Initial call to set system monitor immediately
