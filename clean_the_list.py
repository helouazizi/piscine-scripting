def clean_list(items):
    if len(items) == 0:
        return []

    has_milk = any(item.strip().lower() == 'milk' for item in items)

    if not has_milk:
        items.append('milk')

    cleaned = []

    for index, item in enumerate(items, start=1):
        cleaned_item = item.strip().capitalize()
        formatted = f"{index}/ {cleaned_item}"
        cleaned.append(formatted)

    return cleaned