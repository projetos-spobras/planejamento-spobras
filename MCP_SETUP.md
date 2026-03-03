# Playwright MCP Setup

You have installed the Playwright MCP server package. To use it with your MCP client (like Cline, VS Code, or others), you need to add the following configuration to your client's MCP settings file (usually `mcp.json`, `~/.config/Code/User/globalStorage/mcp-servers.json`, or similar depending on the tool).

## JSON Configuration

Add this entry to your `mcpServers` object:

```json
{
  "mcpServers": {
    "playwright": {
      "command": "npx",
      "args": [
        "-y",
        "@playwright/mcp@latest"
      ]
    }
  }
}
```

## Configuring in VS Code (Client extension)

1.  Open your User Settings (JSON) or the specific MCP extension settings.
2.  Locate the `"mcpServers"` section.
3.  Paste the config above.

## Notes
- The `npx` command ensures you are running the package execution.
- If you run into issues, ensure you can run `npx @playwright/mcp --version` in your terminal.
