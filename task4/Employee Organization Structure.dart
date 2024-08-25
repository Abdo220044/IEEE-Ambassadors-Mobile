class Employee {
  String name = '';
  int id = 0;
  double salary = 0.0;

  void setDetails(String empName, int empId, double empSalary) {
    name = empName;
    id = empId;
    salary = empSalary;
  }

  void displayInfo() {
    print('Name: $name');
    print('ID: $id');
    print('Salary: \$${salary.toStringAsFixed(2)}');
  }
}

class Manager extends Employee {
  String department = '';

  void setManagerDetails(
      String empName, int empId, double empSalary, String dept) {
    setDetails(empName, empId, empSalary);
    department = dept;
  }

  void displayInfo() {
    super.displayInfo();
    print('Department: $department');
  }
}

class Worker extends Employee {
  String shift = '';

  void setWorkerDetails(
      String empName, int empId, double empSalary, String empShift) {
    setDetails(empName, empId, empSalary);
    shift = empShift;
  }

  @override
  void displayInfo() {
    super.displayInfo();
    print('Shift: $shift');
  }
}

void main() {
  Manager manager = Manager();
  manager.setManagerDetails('salma elhwary', 101, 75000.0, 'IT');
  print('Manager Info:');
  manager.displayInfo();

  Worker worker = Worker();
  worker.setWorkerDetails('Mohamed mahmoud', 202, 30000.0, 'Night');
  print('\nWorker Info:');
  worker.displayInfo();
}