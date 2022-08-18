# A simple server app using Dart

## Running on your local

You can run the project with this command:

```
$ dart run bin/server.dart
Server listening on port 8080
```

Or also you can try the demo! | Url: `https://dart-rest-api-example.herokuapp.com`

### Get Data
Endpoint: `"/get"` | Method: `GET`

### Add New Data
Endpoint: `"/add"` | Method: `POST` | Body:
```
{
  "name": "John Doe",
  "age": 30
}
```

### Update Data
Endpoint: `"/update/<id>"` | Method: `PATCH` | Body:
```
{
  "name": "John Doe",
  "age": 30
}
```

### Delete Data
Endpoint: `"/delete/<id>"` | Method: `DELETE`
