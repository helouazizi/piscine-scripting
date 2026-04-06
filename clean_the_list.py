def clean_list(items):
    if len(items) == 0:
        return []

    if 'milk' not in items:
        items.append('milk')

    cleaned = []

    for index, item in enumerate(items, start=1):
        cleaned_item = item.strip().capitalize()

        formatted = f"{index}/ {cleaned_item}"

        cleaned.append(formatted)

    return cleaned