

ForkGeneric: it is a simple package which  helps you to fork two value. 

## How to Import on your Project
To import the ForkGeneric in your project ,it is not available yet in pub.dev just move to your  pubspec.yaml file  and put this code : 

```yaml 
  dependencies:
    fork_generic:
    git:
      url: https://github.com/MarioCarlosChita/Fork-Generic-Package.git
      ref: main # branch name
```    

## Methods Available  
### IsRight()
It´s verify it the return is no the right side; 
```dart
    ForkGeneric<String,bool> checkBalance(String userId){
       return  userId.contains("@key") ? RightForkGeneric(true): LeftForkGeneric("Has the key")
      }     
     bool  verifyDirection =   checkBalance("32322ASASauser@Key").IsRight();
     print(verifyDirection) => true;
``` 

### IsLeft()
It´s verify it the return is no the left side; 
```dart
    ForkGeneric<String,bool> checkBalance(String userId){
       return  userId.contains("@key") ? RightForkGeneric(true): LeftForkGeneric("Has the key")
      }     
     bool  verifyDirection =   checkBalance("32322ASASauser@Key").IsLeft();
     print(verifyDirection) => false;
```


### Example 
```dart 
    // Simple example with random value  
    const int MaxNumber = 6; 
    ForkGeneric<String,int>  guessIt(){
       Random  random = math.Random(); 
       int value  =random.nextIntOfDigits(MaxNumber);
       if (value % 2  == 0)
         return RightForkGeneric(value);
       else
         return LeftForkGeneric("Not an Even number");      
    }
```  

```dart 
    // Simple Example width http client
    // Http Package used in this is example and imported as http  
    const String Api_Url = "https://jsonplaceholder.typicode.com";

    Future<ForkGeneric<Exception,Response>> fetchPosts() async{
      final request  = await http.get(Uri.parse("${Api_Url}/posts"));
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
