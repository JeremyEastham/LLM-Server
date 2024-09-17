# LLM Server

Get up and running quickly using LLM APIs on Windows! This project contains several batch scripts to set up the following:
- [LiteLLM (Proxy Server)](https://docs.litellm.ai/)
- [Open WebUI](https://docs.openwebui.com/)

### Getting Started
0. Make sure Python 3.11+ is installed.
1. Run `install.bat`. This will create two virtual environments, one for the UI and one for the proxy server. The script will also install all necessary dependencies.
2. Create a file named `api_keys.txt` inside the `proxy` folder. Supply API keys for the providers you want to use.
```
ANTHROPIC_API_KEY = "sk-..."
GROQ_API_KEY = "gsk_..."
COHERE_API_KEY = "..."
GOOGLE_API_KEY = "..."
...
```
3. (Optional) Customize the providers and models available in the UI by editing `litellm_config.yaml` file in the `proxy` folder. Model IDs can be found in the [LiteLLM Providers List](https://docs.litellm.ai/docs/providers).
4. Run `serve.bat`. This will start the LiteLLM Proxy Server on `http://localhost:4000` and Open WebUI on `http://localhost`. Leave both console windows running.
5. Open `Launch Open WebUI` or visit `localhost` in your browser to start using your models!