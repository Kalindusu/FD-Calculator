import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main() {
  runApp( Homepage());
}


class Homepage extends StatelessWidget {
  TextEditingController _controller1=new TextEditingController();
   TextEditingController _controller2=new TextEditingController();
    TextEditingController _controller3=new TextEditingController();

    double interest;
    double total;

    void calculation(){
      final calinterestrate=(double.parse(_controller2.text)/100/12)*int.parse(_controller3.text);
      final calinterest=calinterestrate*int.parse(_controller1.text);

      

      

    }

 Homepage(
  
  
  
  {super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SafeArea(
        
        child: Scaffold(
          
          backgroundColor: Colors.white,
        appBar: AppBar(leading:const  Icon(Icons.notes,size: 30,color: Colors.white
        ),
        toolbarHeight: 50,backgroundColor: Colors.blue,elevation:0,
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          const Padding(
            padding:  EdgeInsets.all(15.0),
            child:  Icon(Icons.info,size: 30,color: Colors.white,),
          )
        ],
        
        ),
        body: body(
  
          
        ),
            
        
            ),
      ),
      );
   
  }
  
  body(

  ) {
    return  Container(
      color: Colors.grey[100],
      child: SingleChildScrollView(
        child: Column(
          
          children: [
            Container(
              height: 170,
              width:double.infinity,
              decoration: const BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.only(bottomRight:Radius.circular(100),
              )),
              child: const Padding(
                padding: EdgeInsets.only(bottom: 20),
                child: Align(
                  alignment: Alignment.center,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("Fixed Deposit",style: TextStyle(fontSize: 35,color: Colors.black),),
                      Text("Calculator",style: TextStyle(fontSize: 35,color: Colors.black),),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,  
            ),
             Padding(
               padding: const EdgeInsets.fromLTRB(30,10,40,0),
               child: Column(
                children: [
                  inputForm(title:"Deposit Amount : " ,controller:_controller1,HintText:"eg 2000"  ),
        
                  const SizedBox(height: 20,),
                  
                  inputForm(
                    title:"Annual Interest Rate : " ,controller:_controller2,HintText:"eg 3"
                  ),
                  const SizedBox(height: 20,),
                  
                  inputForm(
                    title:"Period (in month) : " ,controller:_controller3,HintText:"eg 3"
                  ),
                  const SizedBox(height: 30,),
                  GestureDetector(
                    onTap: () {
                      debugPrint("Testing action");
                    },
                    child: Container(height: 60,width: double.infinity,decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(25),
                    ),
                    child: const Center(child:  Text("CALCULATE",style: TextStyle(fontSize: 20,color: Colors.white) ,),
                    ),
                    ),
                  ),
        
                  const SizedBox(height: 10,),
                  const Column(
                    children: [
                      Text("Results : ",style: TextStyle(fontSize: 20),
                      ),
                      SizedBox(height: 20,),
                      Center(
                        child: Text("Interest : ",style: TextStyle(fontSize: 20),
                      ),
                      ),
                      SizedBox(height: 20,),
                       Center(
                        child: Text("Total : ",style: TextStyle(fontSize: 20),
                      ),
                      ),

                      SizedBox(height: 50,),
        
        
                    ],
                  )
                   ],
                         ),
             )
        
          ],
        ),
      ),
    );
    
  }

  
  Widget inputForm({required String title,required TextEditingController controller,required String  HintText}) {
    return  Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      
      children: [
        Text(title,style: const TextStyle(fontSize: 20),
        ),
        const SizedBox(height: 5,
        ),
       Container(
        height: 60,
        decoration:  BoxDecoration(color:Colors.white , borderRadius: BorderRadius.circular(20),
        ),
        child:  TextField(
          controller: controller,
          decoration: InputDecoration(
            border: OutlineInputBorder(borderSide: BorderSide.none),
            hintText: HintText
          ),
        ),
        
       ),
       const SizedBox(height: 10,
       ),
      ],
      
      

    );
  }
}
