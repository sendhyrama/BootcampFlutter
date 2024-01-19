import 'employee.dart';

void main(List<String> args) {
  Employee employee = Employee(
    id: 1,
    name: "John Doe",
    department: "IT",
  );

  print("ID: ${employee.id}");
  print("Name: ${employee.name}");
  print("Department: ${employee.department}");
}