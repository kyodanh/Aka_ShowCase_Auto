#Author: your.email@your.domain.com
#Keywords Summary :
#Feature: List of scenarios.
#Scenario: Business rule through list of steps with arguments.
#Given: Some precondition step
#When: Some key actions
#Then: To observe outcomes or validation
#And,But: To enumerate more Given,When,Then steps
#Scenario Outline: List of steps for data-driven as an Examples and <placeholder>
#Examples: Container for s table
#Background: List of steps run before each of the scenarios
#""" (Doc Strings)
#| (Data Tables)
#@ (Tags/Labels):To group Scenarios
#<> (placeholder)
#""
## (Comments)
#Sample Feature Definition Template
@tag
Feature: Title of your feature
  I want to use this template for my feature file

  #@tag1
  #Scenario Outline: Truy cập vào phân hệ news 
    #Given User thực hiện truy cập web và đăng nhập với username : <username> và password : <password>
    #When User thực hiện mở trang News
    #Then Hệ thống hiển thị table danh sách của trang New
#
  #Examples: 
      #| username | password         |
      #| testuser | akv@2030testuser |
      
  @themmoinews
  Scenario Outline: User thực hiện thêm mới bản tin 
    Given User thực hiện truy cập web và đăng nhập với username : <username> và password : <password>
    When User thực hiện mở trang News
    And  User thực hiện bấm vào add news 
    And  User thực hiện nhập thông tin thêm mới gồm title : <title> , nội dung : <noidung>
    And  User thực hiện thêm mới ảnh feature image
    And User thực hiện chọn category , position và tab 
    And User thực hiện chọn showcase
    And User bấm vào publist
    Then Hệ thống hiển thị thông báo thành công 

  Examples: 
      | username | password         |title|noidung|
      | testuser | akv@2030testuser |test|test|  