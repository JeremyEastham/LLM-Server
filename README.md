# LLM Server

Get up and running quickly using LLM APIs on Windows! This project contains several batch scripts to set up the [LiteLLM](https://docs.litellm.ai/) proxy server and [Open WebUI](https://docs.openwebui.com/). This will allow you to interact with a wide variety of LLM APIs using a ChatGPT-like interface. Many of these APIs have free tiers so you can experiment with dozens of different LLMs!

### Getting Started
0. Make sure Python 3.11+ is installed.
1. Run `install.bat`. This will create two virtual environments, one for the UI and one for the proxy server. The script will also install all necessary dependencies.
2. Create a file named `api_keys.txt` inside the `proxy` folder. Supply API keys for the providers you want to use.
```
ANTHROPIC_API_KEY = "sk-..."
COHERE_API_KEY = "..."
GOOGLE_API_KEY = "..."
GROQ_API_KEY = "gsk_..."
...
```
3. (Optional) Customize the providers and models available in the UI by editing `litellm_config.yaml` file in the `proxy` folder. Model IDs can be found in the [LiteLLM Providers List](https://docs.litellm.ai/docs/providers).
> [!TIP]
> Many models are hosted by several providers. For example, Cohere's Command R+ is hosted at `cohere/command-r-plus`, `github/cohere-command-r-plus`, `huggingface/CohereForAI/c4ai-command-r-plus`, and `openrouter/cohere/command-r-plus`. Add multiple providers that host the same model so you can **switch when you're rate limited**! You can change models or providers mid-chat in Open WebUI.
4. Run `serve.bat`. This will start the LiteLLM Proxy Server on `http://localhost:4000` and Open WebUI on `http://localhost`. Leave both console windows running.
5. Open `Launch Open WebUI` or visit `localhost` in your browser to start using your models!

### Updating to the Latest Version

- LiteLLM
  - Find the latest version displayed at the top of [this page](https://pypi.org/project/litellm/).
  - Edit the `requirements.txt` file in the `proxy` folder to specify the current version (example: `litellm==1.2.3`).
  - Run `update.bat`.
- Open WebUI
  - Find the latest version displayed at the top of [this page](https://pypi.org/project/open-webui/).
  - Edit the `requirements.txt` file in the `ui` folder to specify the current version (example: `open-webui==1.2.3`).
  - Run `update.bat`.

### API Information

| Provider | Models | Rate Limits | Free Tier? |
|----------|--------|-------------|------------|
| Anthropic (Claude) | [Models](https://docs.anthropic.com/en/docs/about-claude/models) | [Rate Limits](https://docs.anthropic.com/en/api/rate-limits) | No |
| Cohere (Command) | [Models](https://docs.cohere.com/docs/models) | [Rate Limits](https://docs.cohere.com/docs/rate-limits) | Yes |
| GitHub | [Models](https://github.com/marketplace/models) | [Rate Limits](https://docs.github.com/en/github-models/prototyping-with-ai-models#rate-limits) | Yes (Beta Waitlist) |
| Google (Gemma/Gemini) | [Models](https://ai.google.dev/pricing) | [Rate Limits](https://ai.google.dev/pricing) | Yes |
| Groq | [Models](https://console.groq.com/docs/models) | [Rate Limits](https://console.groq.com/settings/limits) | Yes |
| HuggingFace | [Models](https://huggingface.co/models?inference=warm&pipeline_tag=text-generation) | [Rate Limits](https://huggingface.co/docs/api-inference/en/rate-limits) | Yes |
| OpenAI (ChatGPT) | [Models](https://platform.openai.com/docs/models) | [Rate Limits](https://platform.openai.com/docs/guides/rate-limits/free-tier-rate-limits) | No |
| OpenRouter | [Models](https://openrouter.ai/docs/models) | [Rate Limits](https://openrouter.ai/docs/limits) | Yes (Free Models Available) |
