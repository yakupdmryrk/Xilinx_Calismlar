<?xml version="1.0" encoding="UTF-8"?>
<drawing version="7">
    <attr value="artix7" name="DeviceFamilyName">
        <trait delete="all:0" />
        <trait editname="all:0" />
        <trait edittrait="all:0" />
    </attr>
    <netlist>
        <signal name="XLXN_1" />
        <signal name="XLXN_2" />
        <signal name="XLXN_3" />
        <signal name="XLXN_4" />
        <signal name="XLXN_5" />
        <signal name="XLXN_6" />
        <signal name="XLXN_7" />
        <signal name="XLXN_8" />
        <signal name="B" />
        <signal name="C" />
        <signal name="XLXN_13" />
        <signal name="A" />
        <signal name="D" />
        <signal name="XLXN_16" />
        <signal name="XLXN_17" />
        <signal name="XLXN_18" />
        <signal name="F" />
        <signal name="G" />
        <port polarity="Input" name="B" />
        <port polarity="Input" name="C" />
        <port polarity="Input" name="A" />
        <port polarity="Input" name="D" />
        <port polarity="Output" name="F" />
        <port polarity="Output" name="G" />
        <blockdef name="and2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
        </blockdef>
        <blockdef name="nand2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <line x2="64" y1="-48" y2="-144" x1="64" />
            <line x2="144" y1="-144" y2="-144" x1="64" />
            <line x2="64" y1="-48" y2="-48" x1="144" />
            <arc ex="144" ey="-144" sx="144" sy="-48" r="48" cx="144" cy="-96" />
        </blockdef>
        <blockdef name="or2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="192" y1="-96" y2="-96" x1="256" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
        </blockdef>
        <blockdef name="nor2">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-64" y2="-64" x1="0" />
            <line x2="64" y1="-128" y2="-128" x1="0" />
            <line x2="216" y1="-96" y2="-96" x1="256" />
            <circle r="12" cx="204" cy="-96" />
            <arc ex="192" ey="-96" sx="112" sy="-48" r="88" cx="116" cy="-136" />
            <arc ex="112" ey="-144" sx="192" sy="-96" r="88" cx="116" cy="-56" />
            <arc ex="48" ey="-144" sx="48" sy="-48" r="56" cx="16" cy="-96" />
            <line x2="48" y1="-48" y2="-48" x1="112" />
            <line x2="48" y1="-144" y2="-144" x1="112" />
        </blockdef>
        <blockdef name="inv">
            <timestamp>2000-1-1T10:10:10</timestamp>
            <line x2="64" y1="-32" y2="-32" x1="0" />
            <line x2="160" y1="-32" y2="-32" x1="224" />
            <line x2="128" y1="-64" y2="-32" x1="64" />
            <line x2="64" y1="-32" y2="0" x1="128" />
            <line x2="64" y1="0" y2="-64" x1="64" />
            <circle r="16" cx="144" cy="-32" />
        </blockdef>
        <block symbolname="and2" name="XLXI_1">
            <blockpin signalname="B" name="I0" />
            <blockpin signalname="XLXN_2" name="I1" />
            <blockpin signalname="XLXN_7" name="O" />
        </block>
        <block symbolname="nand2" name="XLXI_2">
            <blockpin signalname="XLXN_1" name="I0" />
            <blockpin signalname="C" name="I1" />
            <blockpin signalname="XLXN_8" name="O" />
        </block>
        <block symbolname="and2" name="XLXI_3">
            <blockpin signalname="XLXN_6" name="I0" />
            <blockpin signalname="XLXN_5" name="I1" />
            <blockpin signalname="G" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_4">
            <blockpin signalname="XLXN_8" name="I0" />
            <blockpin signalname="XLXN_7" name="I1" />
            <blockpin signalname="F" name="O" />
        </block>
        <block symbolname="or2" name="XLXI_5">
            <blockpin signalname="XLXN_3" name="I0" />
            <blockpin signalname="A" name="I1" />
            <blockpin signalname="XLXN_5" name="O" />
        </block>
        <block symbolname="nor2" name="XLXI_6">
            <blockpin signalname="D" name="I0" />
            <blockpin signalname="XLXN_4" name="I1" />
            <blockpin signalname="XLXN_6" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_7">
            <blockpin signalname="A" name="I" />
            <blockpin signalname="XLXN_2" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_8">
            <blockpin signalname="D" name="I" />
            <blockpin signalname="XLXN_1" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_9">
            <blockpin signalname="C" name="I" />
            <blockpin signalname="XLXN_3" name="O" />
        </block>
        <block symbolname="inv" name="XLXI_10">
            <blockpin signalname="B" name="I" />
            <blockpin signalname="XLXN_4" name="O" />
        </block>
    </netlist>
    <sheet sheetnum="1" width="3520" height="2720">
        <instance x="1488" y="816" name="XLXI_1" orien="R0" />
        <instance x="1488" y="976" name="XLXI_2" orien="R0" />
        <instance x="1520" y="1328" name="XLXI_5" orien="R0" />
        <instance x="1520" y="1504" name="XLXI_6" orien="R0" />
        <instance x="1232" y="720" name="XLXI_7" orien="R0" />
        <instance x="1232" y="944" name="XLXI_8" orien="R0" />
        <instance x="1264" y="1296" name="XLXI_9" orien="R0" />
        <instance x="1264" y="1408" name="XLXI_10" orien="R0" />
        <branch name="XLXN_1">
            <wire x2="1488" y1="912" y2="912" x1="1456" />
        </branch>
        <branch name="XLXN_2">
            <wire x2="1488" y1="688" y2="688" x1="1456" />
        </branch>
        <branch name="XLXN_3">
            <wire x2="1520" y1="1264" y2="1264" x1="1488" />
        </branch>
        <branch name="XLXN_4">
            <wire x2="1520" y1="1376" y2="1376" x1="1488" />
        </branch>
        <instance x="1824" y="1408" name="XLXI_3" orien="R0" />
        <branch name="XLXN_5">
            <wire x2="1792" y1="1232" y2="1232" x1="1776" />
            <wire x2="1792" y1="1232" y2="1280" x1="1792" />
            <wire x2="1824" y1="1280" y2="1280" x1="1792" />
        </branch>
        <branch name="XLXN_6">
            <wire x2="1792" y1="1408" y2="1408" x1="1776" />
            <wire x2="1792" y1="1344" y2="1408" x1="1792" />
            <wire x2="1824" y1="1344" y2="1344" x1="1792" />
        </branch>
        <instance x="1776" y="896" name="XLXI_4" orien="R0" />
        <branch name="XLXN_7">
            <wire x2="1760" y1="720" y2="720" x1="1744" />
            <wire x2="1760" y1="720" y2="768" x1="1760" />
            <wire x2="1776" y1="768" y2="768" x1="1760" />
        </branch>
        <branch name="XLXN_8">
            <wire x2="1760" y1="880" y2="880" x1="1744" />
            <wire x2="1760" y1="832" y2="880" x1="1760" />
            <wire x2="1776" y1="832" y2="832" x1="1760" />
        </branch>
        <branch name="B">
            <wire x2="1104" y1="752" y2="752" x1="1040" />
            <wire x2="1472" y1="752" y2="752" x1="1104" />
            <wire x2="1488" y1="752" y2="752" x1="1472" />
            <wire x2="1104" y1="752" y2="1376" x1="1104" />
            <wire x2="1264" y1="1376" y2="1376" x1="1104" />
        </branch>
        <branch name="C">
            <wire x2="1152" y1="848" y2="848" x1="1040" />
            <wire x2="1472" y1="848" y2="848" x1="1152" />
            <wire x2="1488" y1="848" y2="848" x1="1472" />
            <wire x2="1152" y1="848" y2="1264" x1="1152" />
            <wire x2="1264" y1="1264" y2="1264" x1="1152" />
        </branch>
        <branch name="A">
            <wire x2="1072" y1="688" y2="688" x1="1040" />
            <wire x2="1200" y1="688" y2="688" x1="1072" />
            <wire x2="1232" y1="688" y2="688" x1="1200" />
            <wire x2="1200" y1="688" y2="1200" x1="1200" />
            <wire x2="1280" y1="1200" y2="1200" x1="1200" />
            <wire x2="1520" y1="1200" y2="1200" x1="1280" />
        </branch>
        <branch name="D">
            <wire x2="1072" y1="912" y2="912" x1="1040" />
            <wire x2="1232" y1="912" y2="912" x1="1072" />
            <wire x2="1072" y1="912" y2="1440" x1="1072" />
            <wire x2="1520" y1="1440" y2="1440" x1="1072" />
        </branch>
        <iomarker fontsize="28" x="1040" y="688" name="A" orien="R180" />
        <iomarker fontsize="28" x="1040" y="912" name="D" orien="R180" />
        <iomarker fontsize="28" x="1040" y="752" name="B" orien="R180" />
        <iomarker fontsize="28" x="1040" y="848" name="C" orien="R180" />
        <branch name="F">
            <wire x2="2064" y1="800" y2="800" x1="2032" />
        </branch>
        <iomarker fontsize="28" x="2064" y="800" name="F" orien="R0" />
        <branch name="G">
            <wire x2="2112" y1="1312" y2="1312" x1="2080" />
        </branch>
        <iomarker fontsize="28" x="2112" y="1312" name="G" orien="R0" />
    </sheet>
</drawing>