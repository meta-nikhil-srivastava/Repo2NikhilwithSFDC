<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Student_Record_Updated</fullName>
        <description>Student Record Updated</description>
        <protected>false</protected>
        <recipients>
            <field>Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>HTML_Emails_With_Letterhead/Alternate_Update_Email_Template</template>
    </alerts>
    <fieldUpdates>
        <fullName>Check_Married</fullName>
        <description>Check Married</description>
        <field>Married__c</field>
        <literalValue>1</literalValue>
        <name>Check Married</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Literal</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Married check workflow</fullName>
        <actions>
            <name>Check_Married</name>
            <type>FieldUpdate</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Student__c.Spouse_Name__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Married check workflow</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
    <rules>
        <fullName>Student Details Updated</fullName>
        <actions>
            <name>Student_Record_Updated</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Student__c.First_Name__c</field>
            <operation>notEqual</operation>
        </criteriaItems>
        <description>Student Details Updated</description>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
