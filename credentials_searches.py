import os
import json

def credentials_search():
    input = "logs.json"
    output = "credentials.json"
    try:
        if os.path.isfile(input):
            with open(input) as f:
                content = json.load(f)
                out = find_credentials(content)
                if len(out) > 0:
                    with open(output, "w") as f_out:
                        json.dump(out, f_out, indent=2)
    except:
        pass

def find_credentials(content):
    out = {}
    for key, value in content.items():
        if key in ["password", "secret"]:
            out[key] = value
        elif isinstance(value, dict):
            nested_out = find_credentials(value)
            out.update(nested_out)        
    return out
    

if __name__ == "__main__":
    credentials_search()