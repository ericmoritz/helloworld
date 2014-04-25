def application(env, sr):
    sr("200 OK", [("Content-Type", "text/plain")])
    return ["Hello, World!"]
