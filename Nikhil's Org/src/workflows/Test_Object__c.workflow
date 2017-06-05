<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Revenue_Email</fullName>
        <description>Revenue Email</description>
        <protected>false</protected>
        <recipients>
            <field>Email__c</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Revenue_Template</template>
    </alerts>
    <rules>
        <fullName>Revenue workflow</fullName>
        <actions>
            <name>Revenue_Email</name>
            <type>Alert</type>
        </actions>
        <active>true</active>
        <description>Revenue workflow</description>
        <formula>AND(LastModifiedById  &lt;&gt;  CreatedById, Annual_Revenue__c  &gt;= 1000000)</formula>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
</Workflow>
