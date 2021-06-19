//author


#include<string>
#include<vector>
#include<iostream>
#include <stdlib.h>  
using namespace std;

int main() {

      vector<string> author = {"William Shakespeare",  "Emily Dickinson ",  "H. P. Lovecraft", "Arthur Conan Doyle", "Leo Tolstoy", "Edgar Allan Poe", "Robert Ervin Howard", "Rabindranath Tagore", "Rudyard Kipling", "Seneca", "John Donne", "Sarah Williams", "Oscar Wilde", "Catullus", "Alfred Tennyson", "William Blake", "Charles Dickens", "John Keats", "Theodor Herzl", "Percy Bysshe Shelley", "Ernest Hemingway", "Barack Obama", "Anton Chekhov", "Henry Wadsworth Longfellow", "Arthur Schopenhauer", "Jacob De Haas", "George Gordon Byron", "Jack London", "Robert Frost", "Abraham Lincoln"};
      vector<string> nation = {"Afghanistan","Albania","Algeria","Andorra","Angola","Antigua and Barbuda", "Argentina","Armenia","Australia","Austria","Azerbaijan","The Bahamas","Bahrain","Bangladesh","Barbados","Belarus","Belgium","Belize","Benin","Bhutan","Bolivia","Bosnia and Herzegovina","Botswana","Brazil","Brunei","Bulgaria","Burkina Faso","Burundi","Cambodia","Cameroon"};
      
      for (int i=1;i<= author.size();i++) {
             cout<<"(" <<i <<"," ;
             cout<< author[i-1] << ",";
             cout << nation[i-1] << ",";
             cout << "'" << rand() % 35 + 1960 << "-" << rand() % 12 <<"-" <<rand() % 28<<"'";
             cout << ")" << endl;
      }
      return 0;
 }

///////////////////////comic
#include<string>
#include<vector>
#include<iostream>
#include <stdlib.h>  
using namespace std;

int main() {
        //chapter_id, comic_id, num_pages, update_date, vilews, likes, comments, link
      vector<string> name = {"Death Note ",	"Naruto", 	"Bleach", "Fullmetal Alchemist ","Fruits Basket", "Berserk ",	"Love Hina", "One Piece", "Rurouni Kenshin", 	"Chobits", 	"Azumanga Daioh", "Monster", "Tsubasa, RESERVoir CHRoNiCLE", 	"Yotsuba&!", "Ranma ", 	"Dragon Ball", "Hellsing","Inuyasha", "GTO", 	"Negima! Magister Negi Magi", "Nausicaä of the Valley of the Wind", 	"Claymore","Gantz", 	"Ouran High School Host Club","xxxHOLiC", 		"Cardcaptor Sakura", 		"20th Century Boys", 	"Akira", 	"Vampire Knight", "Absolute Boyfriend"};
      vector<string>status = {"completed", "ongoing", "delayed"};
      for (int i=1;i<= name.size();i++) {
             cout<<"(" <<i <<", " ;
             cout<< name[i-1] << ", ";
             cout << rand() % 30 << ", ";
             cout << status[rand()%3]<< ", ";
             cout << "'" << rand() % 5 + 2010 << "-" << rand() % 12 <<"-" <<rand() % 28<<"' ";
             cout << "'" << rand() % 5 + 2015 << "-" << rand() % 12 <<"-" <<rand() % 28<<"' ";
             cout << rand() % 200 << ", ";
             cout << rand() % 1000000 << ", ";
             cout << (double)(rand() % 100) /20 ;
             cout << ")" << endl;
      }
      return 0;
 }


//chapter
#include<string>
#include<vector>
#include<iostream>
#include <stdlib.h>  
using namespace std;

int main() {
      vector<string> name = {};
      int a[30];
      for (int i =1; i <= 30; i++) a[i] = 0;
      vector<string>status = {"completed", "ongoing", "delayed"};
      for (int i=1;i<= 70;i++) {
             cout<<"(" <<i <<", " ;
             int comid_id = rand() % 30 +1;
             cout<<  comid_id << ", ";
             a[comid_id] ++;
             cout<< a[comid_id]  << ", ";
             
             cout << rand() % 10+ 30 << ", ";
             cout << "'" << rand() % 15 + 2005 << "-" << rand() % 12 <<"-" <<rand() % 1+ 28<<"' ";
             cout << rand() % 10000 << ", ";
             cout << rand() % 1000 <<", ";
             cout << rand() % 1000 <<", ";
             cout << "link"<< i ;
             cout << ")" << endl;
      }
      return 0;
 }