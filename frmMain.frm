VERSION 5.00
Begin VB.Form frmMain 
   BackColor       =   &H0080FFFF&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Beginner Example - Wierd Form"
   ClientHeight    =   3540
   ClientLeft      =   2310
   ClientTop       =   2175
   ClientWidth     =   5745
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3540
   ScaleWidth      =   5745
End
Attribute VB_Name = "frmMain"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Click()
    Dim rgn1, rgn2, rc As Integer

    'Tamagotchi Shape
    rgn1 = CreateEllipticRgn(5, 30, 142, 220)
    rgn2 = CreateEllipticRgn(63, 24, 84, 40)
    rc = CombineRgn(rgn1, rgn1, rgn2, RGN_OR)
    rgn2 = CreateRectRgn(3, 120, 145, 220)
    rc = CombineRgn(rgn1, rgn1, rgn2, RGN_DIFF)
    rgn2 = CreateEllipticRgn(5, 60, 142, 194)
    rc = CombineRgn(rgn1, rgn1, rgn2, RGN_OR)
    rgn2 = CreateEllipticRgn(70, 30, 78, 37)
    rc = CombineRgn(rgn1, rgn1, rgn2, RGN_DIFF)
    rc = SetWindowRgn(Me.hWnd, rgn1, True)
End Sub

Private Sub Form_Load()
    Dim rgn1, rgn2, rc As Integer
    
    rgn1 = CreateRectRgn(28, 8, 226, 27)
    rgn2 = CreateEllipticRgn(17, 30, 80, 80)
    rc = CombineRgn(rgn1, rgn1, rgn2, RGN_OR)
    
    rgn2 = CreateEllipticRgn(21, 34, 76, 76)
    rc = CombineRgn(rgn1, rgn1, rgn2, RGN_DIFF)
    
    rgn2 = CreateRectRgn(70, 70, 150, 150)
    rc = CombineRgn(rgn1, rgn1, rgn2, RGN_OR)
    
    rgn2 = CreateRectRgn(80, 80, 140, 140)
    rc = CombineRgn(rgn1, rgn1, rgn2, RGN_DIFF)
    
    rgn2 = CreateEllipticRgn(80, 80, 140, 140)
    rc = CombineRgn(rgn1, rgn1, rgn2, RGN_OR)
    
    rc = SetWindowRgn(Me.hWnd, rgn1, True)
End Sub
