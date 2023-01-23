

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
### isRight()
It´s verify it the return is on the right side; 
```dart
    ForkGeneric<String,bool> checkBalance(String userId){
       return  userId.contains("@key") ? RightForkGeneric(true): LeftForkGeneric("Has the key")
      }     
     bool  verifyDirection =   checkBalance("32322ASASauser@Key").isRight();
     print(verifyDirection) => true;
``` 

### isLeft()
It´s verify it the return is on the left side; 
```dart
    ForkGeneric<String,bool> checkBalance(String userId){
       return  userId.contains("@key") ? RightForkGeneric(true): LeftForkGeneric("Has the key")
    }     
    bool  verifyDirection =   checkBalance("32322ASASauser@Key").isLeft();
    print(verifyDirection) => false;
```


### fold()  
It returns the both side  right and left, by this you can verify  verify the values on the side.


```dart
    ForkGeneric<String,bool> checkBalance(String userId){
       return  userId.contains("@key") ? RightForkGeneric(true): LeftForkGeneric("Has the key")
    }  

  void main(){
      checkBalance("32322ASASauser@Key".fold(
        (left){
           print("left data");
           print(left);
        } ,
        (right){ 
           print("right data");
           print(left);
        }
      );    
  }     
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
  
  void main(){
       guessIt().fold(
          (left){
             print(left)
          },
          (right){
            print(right);
          }
       )    
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


    void main(){
       fetchPosts().fold(
          (left){
             print(left)
          },
          (right){
            print(right);
          }
       )   
    }
```  
## Additional information 
So as I said this is a simple package which makes fork of two values it is still in developing. feel free to contribute , sugest.Thanks
