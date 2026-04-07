import json


class User:
    username = 'user'
    email = 'something@mail.com'


def create_new_user(data):

    try:
        parsed = json.loads(data)
    except Exception:
        return User()

    if not isinstance(parsed, dict) or 'username' not in parsed or 'email' not in parsed:
        return User()

    user = User()
    user.username = parsed['username']
    user.email = parsed['email']

    return user


def user_to_json(user):

    if user.__dict__ == {}:
        return json.dumps({})

    return json.dumps(user.__dict__)
