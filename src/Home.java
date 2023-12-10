import javax.swing.*;
import java.awt.*;
import java.awt.event.ActionEvent;
import java.awt.event.ActionListener;
import java.awt.event.KeyEvent;
import java.text.SimpleDateFormat;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;

public class Home extends JFrame implements ActionListener {
    JButton attendanceBtn;
    JButton addRemoveBtn;
    JButton newAnnounceBtn;
    JButton newAssignmentBtn;
    JButton importDummyBtn;
    JButton logOutBtn;
    JPanel mainPanel;
    SchoolEntity currentEntity;
    Home(SchoolEntity e){
        super("School Management System: " + e.name);
        setSize(1500,800);

        // save logged in entity to local class attribute
        this.currentEntity = e;

        if(e.role.equals("admin")) { // home layout for admin user
            // admin home image
            ImageIcon ic =  new ImageIcon(ClassLoader.getSystemResource("images/AdminHome.png"));
            Image i3 = ic.getImage().getScaledInstance(1420, 720,Image.SCALE_DEFAULT);
            ImageIcon icc3 = new ImageIcon(i3);
            JLabel l1 = new JLabel(icc3);
            add(l1);

            // initialize button(s)
            attendanceBtn=new JButton("Attendance");
            addRemoveBtn= new JButton("User List");
            newAnnounceBtn= new JButton("Announcement");
            importDummyBtn = new JButton("Import Dummy Data");
            logOutBtn = new JButton("Log-Out");

            // add action listener for the button(s)
            attendanceBtn.addActionListener(this);
            addRemoveBtn.addActionListener(this);
            newAnnounceBtn.addActionListener(this);
            importDummyBtn.addActionListener(this);
            logOutBtn.addActionListener(this);

            // initialize main panel
            mainPanel=new JPanel();

            // add btn(s) to main panel
            mainPanel.add(attendanceBtn);
            mainPanel.add(addRemoveBtn);
            mainPanel.add(newAnnounceBtn);
            mainPanel.add(importDummyBtn);
            mainPanel.add(logOutBtn);

            // add panel to bottom
            add(mainPanel,BorderLayout.SOUTH);

        } else if (e.role.equals("teacher")) { // home layout for teachers
            // teacher home image
            ImageIcon ic =  new ImageIcon(ClassLoader.getSystemResource("images/TeacherHome.png"));
            Image i3 = ic.getImage().getScaledInstance(1420, 720,Image.SCALE_DEFAULT);
            ImageIcon icc3 = new ImageIcon(i3);
            JLabel l1 = new JLabel(icc3);
            add(l1);

            // initialize button(s)
            attendanceBtn=new JButton("Attendance");
            addRemoveBtn= new JButton("User List");
            newAnnounceBtn= new JButton("Announcement");
            newAssignmentBtn= new JButton("Assignment");
            logOutBtn = new JButton("Log-Out");

            // add action listener for the button(s)
            attendanceBtn.addActionListener(this);
            addRemoveBtn.addActionListener(this);
            newAnnounceBtn.addActionListener(this);
            newAssignmentBtn.addActionListener(this);
            logOutBtn.addActionListener(this);

            // initialize main panel
            mainPanel=new JPanel();

            // add btn(s) to main panel
            mainPanel.add(attendanceBtn);
            mainPanel.add(addRemoveBtn);
            mainPanel.add(newAnnounceBtn);
            mainPanel.add(newAssignmentBtn);
            mainPanel.add(logOutBtn);

            // add panel to bottom
            add(mainPanel,BorderLayout.SOUTH);

        } else if (e.role.equals("student")){ // home layout for students
            // student home image
            ImageIcon ic =  new ImageIcon(ClassLoader.getSystemResource("images/StudentHome.png"));
            Image i3 = ic.getImage().getScaledInstance(1420, 720,Image.SCALE_DEFAULT);
            ImageIcon icc3 = new ImageIcon(i3);
            JLabel l1 = new JLabel(icc3);
            add(l1);

            // initialize button(s)
            attendanceBtn=new JButton("Attendance");
            newAnnounceBtn= new JButton("Announcement");
            newAssignmentBtn= new JButton("Assignment");
            logOutBtn = new JButton("Log-Out");

            // add action listener for the button(s)
            attendanceBtn.addActionListener(this);
            newAnnounceBtn.addActionListener(this);
            newAssignmentBtn.addActionListener(this);
            logOutBtn.addActionListener(this);

            // initialize main panel
            mainPanel=new JPanel();

            // add btn(s) to main panel
            mainPanel.add(attendanceBtn);
            mainPanel.add(newAnnounceBtn);
            mainPanel.add(newAssignmentBtn);
            mainPanel.add(logOutBtn);

            // add panel to bottom
            add(mainPanel,BorderLayout.SOUTH);
        }
    }

    public boolean insertQuery(String query) {
        try {
            conn c1 = new conn();
            c1.s.executeUpdate(query);

            return true;
        } catch (Exception ex){
            ex.printStackTrace();

            return false;
        }
    }

    public boolean insertUsers (String user_name, String user_id, String user_role, String user_password) {
        System.out.println("Populating dummy Users");
        String query = "insert into user (user_name, user_id, user_role, user_password) values('"+user_name+"','"+user_id+"','"+user_role+"','"+user_password+"')";
        if(insertQuery(query)){
            return true;
        } else return false;
    }

    public boolean insertAttendance (String user_id, String checkin_datetime) {
        System.out.println("Populating dummy Attendance");
        String query = "insert into attendance (user_id, checkin_datetime) values('"+user_id+"','"+checkin_datetime+"')";
        if(insertQuery(query)){
            return true;
        } else return false;
    }

    public boolean insertAssignment(String assignment_title, String assignment_desc, String teacher_id, String assignment_deadline, String assignment_id) {
        System.out.println("Populating dummy Assignments");
        String query = "insert into assignment (assignment_title, assignment_desc, teacher_id, assignment_deadline, assignment_id) values('"+assignment_title+"','"+assignment_desc+"', '"+teacher_id+"', '"+assignment_deadline+"', '"+assignment_id+"')";
        if(insertQuery(query)){
            return true;
        } else return false;
    }

    public boolean insertAnnouncement(String announcement_title, String announcement_description, String user_id, String announcement_id) {
        System.out.println("Populating dummy Announcements");
        String query = "insert into announcement (announcement_title, announcement_description, user_id, announcement_id) values('"+announcement_title+"', '"+announcement_description+"', '"+user_id+"', '"+announcement_id+"')";
        if(insertQuery(query)){
            return true;
        } else return false;
    }
    public boolean insertSubmittedAssignmentsDummy(String assignment_id, String assignment_data, String assignment_status, String assignment_score, String user_id, String assignment_feedback) {
        System.out.println("Populating dummy Submitted Assignments");
        String query = "insert into submitted_assignment (assignment_id, assignment_data, assignment_status, assignment_score, user_id, assignment_feedback) values('"+assignment_id+"', '"+assignment_data+"', '"+assignment_status+"', '"+assignment_score+"', '"+user_id+"', '"+assignment_feedback+"');";
        if(insertQuery(query)){
            return true;
        } else return false;
    }

    public boolean ImportData(){
        String line = "";
        String splitBy = ",";

        try
        {
            //parse user CSV - START
            BufferedReader brUser = new BufferedReader(new FileReader("db_seed/user.csv"));
            while ((line = brUser.readLine()) != null)
            {
                String[] user = line.split(splitBy); // split each row by comma
                if(insertUsers(user[0], user[1], user[2], user[3]) == false){ // add attendance to db
                    return false;
                }
            }
            //parse user CSV - END

            //parse attendance CSV - START
            BufferedReader brAttendance = new BufferedReader(new FileReader("db_seed/attendance.csv"));
            while ((line = brAttendance.readLine()) != null)
            {
                String[] attendance = line.split(splitBy); // split each row by comma
                if(insertAttendance(attendance[0], attendance[1]) == false){ // add attendance to db
                    return false;
                }
            }
            //parse attendance CSV - END

            // parse assignment CSV - START
            BufferedReader brAssignment = new BufferedReader(new FileReader("db_seed/assignment.csv"));
            while ((line = brAssignment.readLine()) != null)
            {
                String[] assignment = line.split(splitBy); // split each row by comma
                if(insertAssignment(assignment[0], assignment[1], assignment[2], assignment[3], assignment[4]) == false){
                    return false;
                }
            }
            // parse assignment CSV - END

            // parse announcement CSV - START
            BufferedReader brAnnouncement = new BufferedReader(new FileReader("db_seed/announcement.csv"));
            while ((line = brAnnouncement.readLine()) != null)
            {
                String[] announcement = line.split(splitBy); // split each row by comma
                if(insertAnnouncement(announcement[0], announcement[1], announcement[2], announcement[3]) == false){
                    return false;
                }
            }
            // parse announcement CSV - END

            // parse dummy submitted assignments - START
            BufferedReader brSubAssign = new BufferedReader(new FileReader("db_seed/submitted_assignment.csv"));
            while ((line = brSubAssign.readLine()) != null)
            {
                String[] announcement = line.split(splitBy); // split each row by comma
                if(insertSubmittedAssignmentsDummy(announcement[0], announcement[1], announcement[2], announcement[3], announcement[4], announcement[5]) == false){
                    return false;
                }
            }
            // parse dummy submitted assignments - END
        }
        catch (IOException e)
        {
            e.printStackTrace();
        }

        return true;
    }

    public void actionPerformed(ActionEvent ae){
        String msg = ae.getActionCommand();
        // System.out.println("Action command: " + msg); // for testing

        // redirections to each menu page
        if(msg.equals("Attendance")){
            new Attendance(this.currentEntity).setVisible(true);
            this.setVisible(false);
        } else if (msg.equals("User List")) {
            new UserList(this.currentEntity, true).setVisible(true);
            this.setVisible(false);
        } else if (msg.equals("Announcement")) {
            new Announcement(this.currentEntity).setVisible(true);
            this.setVisible(false);
        } else if (msg.equals("Assignment")) {
            new Assignment(this.currentEntity).setVisible(true);
            this.setVisible(false);
        } else if (msg.equals("Import Dummy Data")){

            if(this.ImportData()){
                JOptionPane.showMessageDialog(null,"Data Import Success");
            } else {
                JOptionPane.showMessageDialog(null,"Data Import Failed");
            }
        } else if (msg.equals("Log-Out")){
            new login().setVisible(true);
            this.setVisible(false);
        }
    }
}