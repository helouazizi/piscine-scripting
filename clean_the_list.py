def clean_list(shopping_list):
    
    for i in range(len(shopping_list)):
        shopping_list[i] = shopping_list[i].strip().capitalize()

    if ("Milk" not in shopping_list) and shopping_list:
        shopping_list.append("Milk")

    for i in range(len(shopping_list)):
        shopping_list[i] = f"{i + 1}/ {shopping_list[i]}"

    return shopping_list
