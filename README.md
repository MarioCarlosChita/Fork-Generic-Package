

ForkGeneric: it is a simple package which  helps you to fork two different data.
## Exampple
```dart 
    // Simple example with random value
    ForkGeneric<String,int>  guessIt(){
       Random  random = math.Random(); 
       int value  =random.nextIntOfDigits(6);
       if (value % 2  == 0)
         return RightForkGeneric(value);
       else
         return LeftForkGeneric("Not an Even number");      
    }
```  

```dart 
    // Http Client Data
    // Http Package used in this is example and imported as http
    Future<ForkGeneric<Exception,Response>> fetchPosts(){
      final request  = http.get(Uri.parse("${Api_URL}/posts"));
      if (request.statusCode == HttpStatusCode.ok){
           return RightForkGeneric(request);   
      } 
      return  LeftForkGeneric(SocketExcption()); 
    }
``` 
## Getting started

TODO: List prerequisites and provide or point to information on how to
start using the package.

## Usage

TODO: Include short and useful examples for package users. Add longer examples
to `/example` folder.

```dart
const like = 'sample';
```

## Additional information

TODO: Tell users more about the package: where to find more information, how to
contribute to the package, how to file issues, what response they can expect
from the package authors, and more.
