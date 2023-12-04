// Copyright (c) 2023 Xu Shaohua <shaohua@biofan.org>. All rights reserved.
// Use of this source is governed by GNU General Public License
// that can be found in the LICENSE file.

#include <iostream>
#include <string>
#include <vector>

class Employee {
 public:
  explicit Employee(const std::string& name, double salary)
    : name_(name), salary_(salary) {}
  virtual ~Employee() = default;

  const std::string& name() const { return name_; }
  double salary() const { return salary_; }
  void set_salary(double salary) { salary_ = salary; }

  virtual std::string roles() = 0;

 protected:
  std::string name_;
  double salary_;
};

class Developer: public Employee {
 public:
  explicit Developer(const std::string& name, double salary)
    : Employee(name, salary), roles_("Developer") {}

  std::string roles() override { return roles_; }

 private:
  std::string roles_;
};

class Designer: public Employee {
 public:
  explicit Designer(const std::string& name, double salary)
    : Employee(name, salary), roles_("Designer") {}

  std::string roles() override { return roles_; }
 private:
  std::string roles_;
};

class Organization {
 public:
  ~Organization() {
    for (Employee* employee : employees_) {
      delete employee;
    }
  }

  void add_employee(Employee* employee) {
    employees_.emplace_back(employee);
  }

  double getNetSalaries() const {
    double net_salaries = 0.0;
    for (const Employee* employee : employees_) {
      net_salaries += employee->salary();
    }
    return net_salaries;
  }

 private:
  std::vector<Employee*> employees_;
};

int main() {
  Employee* john = new Designer("John Doe", 15000);
  Employee* jane = new Developer("Jane Doe", 12000);
  Organization organization;
  organization.add_employee(john);
  organization.add_employee(jane);
  std::cout << "net salaries: " << organization.getNetSalaries() << std::endl;

  return 0;
}