@PostMapping
public Student addStudent(@Valid @RequestBody Student student) {
    return repo.save(student);
}

@PutMapping("/{id}")
public Student updateStudent(@PathVariable Long id, @Valid @RequestBody Student student) {
    student.setId(id);
    return repo.save(student);
}
