import from byllm { Model }

glob llm = Model(
    model_name="openai/gpt-4o-mini"
);

def generate_image_prompt(theme: str) -> str by llm();

with entry {
    theme = "surreal dreamscape";
    prompt = generate_image_prompt(theme);
    print(f"Generated image prompt: {prompt}");
}



