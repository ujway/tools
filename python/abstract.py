#!/usr/bin/env python
# -*- coding: utf-8 -*-

from abc import ABCMeta, abstractmethod

class Animal(metaclass=ABCMeta):
    @abstractmethod
    def sound(self):
        pass

class Cat(Animal):
    def sound(self):
        print("Meow")

class Dog():
    def sound(self):
        print("Bow")

class Book():
    pass

Animal.register(Dog)

def output(animal):
    print(animal.__class__.__name__, end=": ")
    animal.sound()

if __name__ == "__main__":
    c = Cat()
    output(c)

    d = Dog()
    output(d)

    b = Book()
    output(b)