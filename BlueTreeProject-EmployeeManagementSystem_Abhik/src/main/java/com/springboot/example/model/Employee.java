package com.springboot.example.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Past;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
@Entity
public class Employee {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;

	@Column
	@NotBlank(message = "Employee name can not be empty")
	@Size(min = 3, max = 50, message = "Name must have minimum 3 characters")
	private String name;

	@Column
	@NotNull(message = "Please enter valid Email Id")
	private String email;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	@Column()
	@NotNull(message = "Please select employee Date of Birth")
	private Date dob;

	@Column
	@NotBlank
	private int age;

	@Column
	@NotBlank(message = "Please enter salary amount")
	private float salary;

	@Column
	@NotBlank(message = "Please enter employee status")
	private boolean status;

}
