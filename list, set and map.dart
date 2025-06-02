void main()
{
// List

// List<int> lst=[]; Hardcored way
// List<int> lst=List<int>.filled(4, 3); // 4 is the limit and 3 is the default value of every element
List lst=[];
lst.add(1);
lst.insert(1,'hello');

lst.insert(2,[1,2,3]);
print(lst[2][0]);

lst.addAll([1,4,4]); // adds 1,4,4
lst.remove(4);  // Removes first 4
// lst.removeLast() it's like pop in python

lst.removeAt(0); // removes from index 0

print('$lst \n ${lst.length}\n${lst.contains(4)}');
print(lst.reversed);
print(lst.indexOf(4));
lst.clear();  // clears whole list

// lst.insert(7,3);  // Range error


// Set is the same except it doesn't have index based functions like indexat, removeat, list[i]. we can't access by index
Set<int> s1={1,2,3};
s1.add(4);
s1.add(4);
print(s1);

// Map is a dict.
Map<String,String> dict={};
dict['a']="Assembly";
dict['b']="BroCode";
print(dict.containsKey('a')); //bool
print(dict.containsValue("Assembly"));
print(dict.length);

print("${dict.values} ${dict.keys}\n");

dict['c']??="Code";  // assigns value if null

print(dict);
dict.remove('a');
print(dict);
}