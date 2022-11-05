if __name__ == '__main__':
    students = []
    grades = []
    names = []
    for _ in range(int(input())):
        name = input()
        score = float(input())
        grades.append(score)
        names.append(name)
        students.append([name,score])
    
    not_lowest_grade_list = [x for x in grades if x != min(grades)]
    second_lowest_grade = min(not_lowest_grade_list) 
    second_lowest_students = [name for name,grade in students if grade == second_lowest_grade ]
    
    for student in sorted(second_lowest_students):
        print(student)
