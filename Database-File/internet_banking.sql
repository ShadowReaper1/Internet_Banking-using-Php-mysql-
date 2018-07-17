-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 04, 2016 at 08:29 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `internet_banking`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `account_no` varchar(20) NOT NULL,
  `account_balance` int(11) NOT NULL,
  `branch_code` varchar(10) NOT NULL,
  `account_type` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`account_no`, `account_balance`, `branch_code`, `account_type`) VALUES
('101789456123', 459312, 'IB20000', 'savings'),
('101789456321', 25648, 'IB20000', 'savings'),
('101789456456', 6254, 'IB20001', 'savings'),
('101789456789', 124024, 'IB20002', 'savings'),
('101789456987', 274300, 'IB20003', 'savings'),
('101789456988', 100000, 'IB20002', 'savings'),
('101789456989', 10000, 'IB20002', 'savings'),
('101789456990', 1300, 'IB20002', 'savings'),
('101789456991', 120700, 'IB20002', 'savings'),
('101789456992', 100045, 'IB20002', 'savings'),
('101789456993', 5000, 'IB20002', 'savings'),
('101789456994', 1500, 'IB20002', 'savings'),
('101789456995', 700, 'IB20002', 'savings'),
('101789456996', 1000, 'IB20002', 'savings');

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `admin_name` varchar(255) NOT NULL,
  `admin_gender` char(1) NOT NULL,
  `admin_dob` date NOT NULL,
  `admin_relationship` varchar(255) NOT NULL,
  `admin_address` varchar(255) NOT NULL,
  `admin_phone_no` varchar(11) NOT NULL,
  `admin_username` varchar(255) NOT NULL,
  `admin_password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `admin_name`, `admin_gender`, `admin_dob`, `admin_relationship`, `admin_address`, `admin_phone_no`, `admin_username`, `admin_password`) VALUES
(1, 'admin', 'M', '1980-03-26', 'unmarried', 'iiita', '9584562144', 'admin', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `atm`
--

CREATE TABLE `atm` (
  `account_no` varchar(20) NOT NULL,
  `atm_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `atm`
--

INSERT INTO `atm` (`account_no`, `atm_status`) VALUES
('101789456789', 'ISSUED'),
('101789456123', 'ISSUED'),
('101789456321', 'ISSUED'),
('101789456456', 'ISSUED'),
('101789456989', 'ISSUED'),
('101789456990', 'ISSUED'),
('101789456991', 'ISSUED'),
('101789456993', 'PENDING'),
('101789456992', 'PENDING'),
('101789456994', 'PENDING'),
('101789456995', 'ISSUED');

-- --------------------------------------------------------

--
-- Table structure for table `beneficiary`
--

CREATE TABLE `beneficiary` (
  `b_account_no` varchar(20) NOT NULL,
  `b_name` varchar(20) NOT NULL,
  `account_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `beneficiary`
--

INSERT INTO `beneficiary` (`b_account_no`, `b_name`, `account_no`) VALUES
('101789456987', 'Isha deol', '101789456123'),
('101789456789', 'Ravi Nandan', '101789456321'),
('101789456456', 'deepak rajwar', '101789456321'),
('101789456987', 'Shailesh Kumar', '101789456321'),
('101789456991', 'uday', '101789456993'),
('101789456789', 'ravi nandan', '101789456993'),
('101789456123', 'deepak rajwar', '101789456993'),
('101789456993', 'ramesh', '101789456991'),
('101789456990', 'dheeraj', '101789456991'),
('101789456456', 'Shailesh Kumar', '101789456991'),
('101789456456', 'Shailesh Kumar', '101789456992'),
('101789456991', 'uday', '101789456123'),
('101789456994', 'sarath', '101789456123'),
('101789456789', 'Ravi Nandan', '101789456994'),
('101789456990', 'dheeraj', '101789456995'),
('101789456993', 'ramesh', '101789456990'),
('101789456321', 'deepak rajwar', '101789456123');

-- --------------------------------------------------------

--
-- Table structure for table `borrower`
--

CREATE TABLE `borrower` (
  `Customer_id` int(11) NOT NULL,
  `loan_no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `borrower`
--

INSERT INTO `borrower` (`Customer_id`, `loan_no`) VALUES
(10001, 101256),
(10003, 101246),
(10005, 101236);

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch_code` varchar(10) NOT NULL,
  `branch_name` varchar(20) NOT NULL,
  `branch_city` varchar(20) NOT NULL,
  `Assets` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch_code`, `branch_name`, `branch_city`, `Assets`) VALUES
('IB20000', 'jubilee branch', 'hyderabad', 2010242),
('IB20001', 'civil branch', 'Allahabad', 2010246),
('IB20002', 'Nehru branch', 'Mumbai', 2018542),
('IB20003', 'hardy branch', 'Kolkata', 2482242);

-- --------------------------------------------------------

--
-- Table structure for table `cheque_book`
--

CREATE TABLE `cheque_book` (
  `account_no` varchar(20) NOT NULL,
  `cheque_book_status` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cheque_book`
--

INSERT INTO `cheque_book` (`account_no`, `cheque_book_status`) VALUES
('101789456321', 'ISSUED'),
('101789456789', 'ISSUED'),
('101789456456', 'ISSUED'),
('101789456987', 'ISSUED'),
('101789456989', 'ISSUED'),
('101789456990', 'PENDING'),
('101789456995', 'ISSUED'),
('101789456992', 'PENDING'),
('101789456993', 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `Customer_id` int(11) NOT NULL,
  `Customer_name` varchar(30) NOT NULL,
  `Customer_houseno` varchar(20) NOT NULL,
  `Customer_street` varchar(20) NOT NULL,
  `Customer_city` varchar(20) NOT NULL,
  `Customer_pincode` int(6) NOT NULL,
  `Customer_dob` date NOT NULL,
  `Customer_phoneno` varchar(15) NOT NULL,
  `Customer_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`Customer_id`, `Customer_name`, `Customer_houseno`, `Customer_street`, `Customer_city`, `Customer_pincode`, `Customer_dob`, `Customer_phoneno`, `Customer_email`) VALUES
(10001, 'Rashid feroz', '2-1-56', 'Gandhi road', 'Kolkata', 214520, '1980-04-02', '7895213462', 'rashid@gmail.com'),
(10002, 'Deepak rajwar', '8-1-90', 'HItech', 'Chennai', 614895, '1981-03-07', '9587612314', 'deepak@gmail.com'),
(10003, 'Shailesh kumar', '7-8-90', 'Sardar road', 'Mumbai', 468952, '1979-02-04', '8587612314', 'shailesh@gmail.com'),
(10004, 'Ravi Nandan', '5-8-60', 'Shastri ward', 'Bangalore', 468752, '1978-04-06', '9587612358', 'ravi@gmail.com'),
(10005, 'Isha deol', '5-8-96', 'Necklace road', 'Chandigarh', 365879, '1977-02-11', '9587612568', 'isha@gmail.com'),
(10012, 'dheeraj', '8-9-88', 'jhalwa road', 'hyderabad', 123456, '1998-06-10', '9876541230', 'dheeraj@gmail.com'),
(10014, 'rakesh', '1-2-55', 'jhalwa', 'Allahabad', 123456, '1999-06-10', '07800498318', 'rakesh@gmail.com'),
(10015, 'ramesh', '5-8-66', 'camp colony', 'jaipur', 456123, '1997-06-19', '07894561320', 'ramesh@gmail.com'),
(10016, 'Sarath', '3-10-372', 'GangaColony', 'guntur', 500074, '2003-05-06', '9874563211', 'xyz@gmail.com'),
(10017, 'sam', '2-5-66', 'nehru street', 'mumbai', 254687, '2016-02-10', '9658569856', 'sam@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `depositor`
--

CREATE TABLE `depositor` (
  `Customer_id` int(11) NOT NULL,
  `account_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `depositor`
--

INSERT INTO `depositor` (`Customer_id`, `account_no`) VALUES
(10001, '101789456123'),
(10002, '101789456321'),
(10003, '101789456456'),
(10004, '101789456789'),
(10005, '101789456987'),
(10012, '101789456990'),
(10014, '101789456992'),
(10015, '101789456993'),
(10016, '101789456994'),
(10017, '101789456995');

-- --------------------------------------------------------

--
-- Table structure for table `loan`
--

CREATE TABLE `loan` (
  `loan_no` int(11) NOT NULL,
  `loan_type` varchar(20) NOT NULL,
  `loan_amount` int(11) NOT NULL,
  `branch_code` varchar(10) NOT NULL,
  `account_no` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `loan`
--

INSERT INTO `loan` (`loan_no`, `loan_type`, `loan_amount`, `branch_code`, `account_no`) VALUES
(101236, 'Business', 1000000, 'IB20003', '101789456987'),
(101246, 'house', 500000, 'IB20001', '101789456456'),
(101256, 'Education', 400000, 'IB20000', '101789456123');

-- --------------------------------------------------------

--
-- Table structure for table `login_credentials`
--

CREATE TABLE `login_credentials` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `security_question` varchar(100) NOT NULL,
  `security_answer` varchar(20) NOT NULL,
  `Customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_credentials`
--

INSERT INTO `login_credentials` (`username`, `password`, `security_question`, `security_answer`, `Customer_id`) VALUES
('asdf', 'scadc', 'Which is your favourite sport?', 'asdadqw', 10001),
('deepak', 'project', 'What is your school?', 'navodaya school', 10002),
('dheeraj', 'project', 'What is your favourite subject?', 'daa', 10012),
('isha', 'project', 'Which is your favourite sport?', 'swim', 10005),
('rakesh', 'project', 'Which is your favourite sport?', 'swim', 10014),
('ramesh', 'project', 'What is your favourite pet?', 'dog', 10015),
('rashid', 'project', 'What is your school?', 'navodaya school', 10001),
('ravi', 'project', 'Which is your favourite sport?', 'swim', 10004),
('sam', 'project', 'What is your favourite colour?', 'white', 10017),
('sarath', 'project', 'What is your favourite colour?', 'blue', 10016),
('shailesh', 'project', 'What is your favourite colour?', 'red', 10003);

-- --------------------------------------------------------

--
-- Table structure for table `pin`
--

CREATE TABLE `pin` (
  `Customer_pincode` int(6) NOT NULL,
  `Customer_street` varchar(20) NOT NULL,
  `Customer_city` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pin`
--

INSERT INTO `pin` (`Customer_pincode`, `Customer_street`, `Customer_city`) VALUES
(214520, 'Gandhi road', 'Kolkata'),
(365879, 'Necklace road', 'Chandigarh'),
(468752, 'Shastri ward', 'Bangalore'),
(468952, 'Sardar road', 'Mumbai'),
(614895, 'HItech', 'Chennai');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `staff_id` int(6) NOT NULL,
  `name` varchar(30) NOT NULL,
  `gender` char(1) NOT NULL,
  `dob` date NOT NULL,
  `city` varchar(30) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`staff_id`, `name`, `gender`, `dob`, `city`, `username`, `password`, `mobile`, `email`) VALUES
(101, 'sunil', 'M', '1990-05-05', 'kerala', 'sunil', 'staff', '8527419630', 'sunil@gmail.com'),
(102, 'akash', 'M', '1998-08-21', 'kolkata', 'akash', 'staff', '9451051125', 'akash@gmail.com'),
(103, 'pankaj', 'M', '1989-05-31', 'banglore', 'pankaj', 'staff', '7845612789', 'pankaj@gmail.com'),
(104, 'sharma', 'M', '1980-04-21', 'hyderabad', 'sharma', 'staff', '9856321475', 'sharma@gmail.com'),
(107, 'priyatham', 'M', '2016-04-07', 'guntur', 'priyatham', 'staff', '7894561230', 'priyatham@gmail.com'),
(122, 'Hari', '', '2016-04-27', 'Allahabad', 'hari', 'staff', '9856485795', 'harif@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `transaction_details`
--

CREATE TABLE `transaction_details` (
  `transaction_id` int(20) NOT NULL,
  `transaction_type` varchar(15) NOT NULL,
  `transaction_amount` int(11) NOT NULL,
  `transaction_date` date NOT NULL,
  `transaction_time` time NOT NULL,
  `account_no` varchar(20) NOT NULL,
  `f_account_no` varchar(20) DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaction_details`
--

INSERT INTO `transaction_details` (`transaction_id`, `transaction_type`, `transaction_amount`, `transaction_date`, `transaction_time`, `account_no`, `f_account_no`) VALUES
(1, 'withdrawl', 1200, '2016-01-25', '12:25:46', '101789456123', NULL),
(4, 'withdrawl', 200, '2016-04-23', '04:32:54', '101789456123', NULL),
(5, 'withdrawl', 5000, '2016-02-15', '21:25:51', '101789456789', '101789456321'),
(7, 'withdrawl', 300, '2016-05-02', '12:43:16', '101789456993', '101789456991'),
(9, 'withdrawl', 10000, '2016-05-02', '12:57:51', '101789456991', '101789456993'),
(11, 'withdrawl', 5000, '2016-05-02', '01:01:32', '101789456993', '101789456123'),
(13, 'withdrawl', 1500, '2016-05-02', '01:51:23', '101789456123', '101789456994'),
(15, 'withdrawl', 300, '2016-05-02', '01:55:15', '101789456994', '101789456789'),
(16, 'deposit', 300, '2016-05-02', '01:55:15', '101789456789', '101789456994'),
(17, 'withdrawl', 700, '2016-05-02', '02:16:53', '101789456994', '101789456789'),
(18, 'withdrawl', 300, '2016-05-03', '03:32:50', '101789456995', '101789456990'),
(19, 'withdrawl', 200, '2016-05-03', '04:29:01', '101789456123', '101789456987'),
(20, 'withdrawl', 500, '2016-05-03', '09:30:40', '101789456993', '101789456991'),
(21, 'withdrawl', 200, '2016-05-04', '07:51:11', '101789456993', '101789456991');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`account_no`),
  ADD KEY `branch_code` (`branch_code`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `atm`
--
ALTER TABLE `atm`
  ADD KEY `account_no` (`account_no`);

--
-- Indexes for table `beneficiary`
--
ALTER TABLE `beneficiary`
  ADD KEY `account_no` (`account_no`),
  ADD KEY `b_account_no` (`b_account_no`);

--
-- Indexes for table `borrower`
--
ALTER TABLE `borrower`
  ADD KEY `Customer_id` (`Customer_id`),
  ADD KEY `loan_no` (`loan_no`);

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch_code`);

--
-- Indexes for table `cheque_book`
--
ALTER TABLE `cheque_book`
  ADD KEY `account_no` (`account_no`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`Customer_id`);

--
-- Indexes for table `depositor`
--
ALTER TABLE `depositor`
  ADD KEY `Customer_id` (`Customer_id`),
  ADD KEY `account_no` (`account_no`);

--
-- Indexes for table `loan`
--
ALTER TABLE `loan`
  ADD PRIMARY KEY (`loan_no`),
  ADD KEY `branch_code` (`branch_code`),
  ADD KEY `account_no` (`account_no`);

--
-- Indexes for table `login_credentials`
--
ALTER TABLE `login_credentials`
  ADD PRIMARY KEY (`username`),
  ADD KEY `Customer_id` (`Customer_id`);

--
-- Indexes for table `pin`
--
ALTER TABLE `pin`
  ADD PRIMARY KEY (`Customer_pincode`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`staff_id`);

--
-- Indexes for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `account_no` (`account_no`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `staff_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;
--
-- AUTO_INCREMENT for table `transaction_details`
--
ALTER TABLE `transaction_details`
  MODIFY `transaction_id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `account`
--
ALTER TABLE `account`
  ADD CONSTRAINT `account_ibfk_1` FOREIGN KEY (`branch_code`) REFERENCES `branch` (`branch_code`);

--
-- Constraints for table `atm`
--
ALTER TABLE `atm`
  ADD CONSTRAINT `atm_ibfk_1` FOREIGN KEY (`account_no`) REFERENCES `account` (`account_no`);

--
-- Constraints for table `beneficiary`
--
ALTER TABLE `beneficiary`
  ADD CONSTRAINT `beneficiary_ibfk_1` FOREIGN KEY (`account_no`) REFERENCES `account` (`account_no`),
  ADD CONSTRAINT `beneficiary_ibfk_2` FOREIGN KEY (`b_account_no`) REFERENCES `account` (`account_no`);

--
-- Constraints for table `borrower`
--
ALTER TABLE `borrower`
  ADD CONSTRAINT `borrower_ibfk_1` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Customer_id`),
  ADD CONSTRAINT `borrower_ibfk_2` FOREIGN KEY (`loan_no`) REFERENCES `loan` (`loan_no`);

--
-- Constraints for table `cheque_book`
--
ALTER TABLE `cheque_book`
  ADD CONSTRAINT `cheque_book_ibfk_1` FOREIGN KEY (`account_no`) REFERENCES `account` (`account_no`);

--
-- Constraints for table `depositor`
--
ALTER TABLE `depositor`
  ADD CONSTRAINT `depositor_ibfk_1` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Customer_id`),
  ADD CONSTRAINT `depositor_ibfk_2` FOREIGN KEY (`account_no`) REFERENCES `account` (`account_no`);

--
-- Constraints for table `loan`
--
ALTER TABLE `loan`
  ADD CONSTRAINT `loan_ibfk_1` FOREIGN KEY (`branch_code`) REFERENCES `branch` (`branch_code`),
  ADD CONSTRAINT `loan_ibfk_2` FOREIGN KEY (`account_no`) REFERENCES `account` (`account_no`);

--
-- Constraints for table `login_credentials`
--
ALTER TABLE `login_credentials`
  ADD CONSTRAINT `login_credentials_ibfk_1` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Customer_id`);

--
-- Constraints for table `transaction_details`
--
ALTER TABLE `transaction_details`
  ADD CONSTRAINT `transaction_details_ibfk_1` FOREIGN KEY (`account_no`) REFERENCES `account` (`account_no`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
