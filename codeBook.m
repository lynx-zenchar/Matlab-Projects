% codeBook.m
% This program will decipher a a matrix given in the Homework 2 pdf and
% provide a matrix for a coded 'good morning'.
%
% Author: Matthew Eleazar
%
% Collaborated with Prof. McWilliams
% Date: 1/26/22
clear all
clc
%% Code index
a = 'the quick brown fox jumps over the lazy dog.';
    %12345678901234567890123456789012345678901234

%% What we are trying to decipher
b = [a(39), a(13), a(22), a(4), a(37), a(12), a(3), a(4), a(30), a(7), a(43), a(2), a(1)]

%% Good morning
% 'good morning' decoded
c = [a(43), a(13), a(13), a(41), a(40), a(23), a(13), a(12), a(15), a(7),  a(15), a(43)];
% 'good morning' coded
d = [43 13 13 41 40 23 13 12 15 7 15 43]