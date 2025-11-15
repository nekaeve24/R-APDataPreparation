# ---------------------------------------------------------------
# R Project: AP Data Preparation & Analysis (Synthetic Dataset)
# Author: Neka Everett
# Description: Synthetic AP data project demonstrating data cleaning,
# visualization, and reproducible analytics workflows.
# ---------------------------------------------------------------

# Load required libraries
library(ggplot2)

# Step 1: Create synthetic dataset
set.seed(2025)
df_public <- data.frame(
  Student.ID = sample(301000100:301000200, 20, replace = TRUE),
  Score = sample(1:5, 20, replace = TRUE),
  Subject = sample(c("Biology", "Chemistry", "Physics", "Calculus", "Calculus AP"), 20, replace = TRUE),
  Grade = sample(c("10th Grade", "11th Grade", "12th Grade"), 20, replace = TRUE),
  School = sample(c("Bronx Academy", "Harlem Prep", "Queens Tech", "Riverside Prep"), 20, replace = TRUE),
  Teacher = sample(c("Mr. Lee", "Ms. Patel", "Dr. Gomez", "Mrs. Chen"), 20, replace = TRUE)
)

# Step 2: Save dataset
write.csv(df_public, "AP_Dataset_Public.csv", row.names = FALSE)

# Step 3: Create visualizations
# 3A: Distribution of AP Scores by School
ggplot(df_public, aes(x = School, y = Score, fill = School)) +
  geom_boxplot() +
  labs(title = "Distribution of AP Scores by School", x = "School", y = "Score") +
  theme_minimal() +
  theme(plot.title = element_text(size = 14, face = "bold"),
        axis.title = element_text(size = 12),
        axis.text.x = element_text(angle = 45, hjust = 1))
ggsave("AP_Scores_by_School.png", width = 7, height = 5, dpi = 300)

# 3B: Distribution of AP Scores by Subject
ggplot(df_public, aes(x = Subject, y = Score, fill = Subject)) +
  geom_boxplot() +
  labs(title = "Distribution of AP Scores by Subject", x = "Subject", y = "Score") +
  theme_minimal() +
  theme(plot.title = element_text(size = 14, face = "bold"),
        axis.title = element_text(size = 12),
        axis.text.x = element_text(angle = 45, hjust = 1),
        legend.position = "none")
ggsave("AP_Scores_by_Subject.png", width = 7, height = 5, dpi = 300)

# 3C: Distribution of AP Scores by Teacher
ggplot(df_public, aes(x = Teacher, y = Score, fill = Teacher)) +
  geom_boxplot() +
  labs(title = "Distribution of AP Scores by Teacher", x = "Teacher", y = "Score") +
  theme_minimal() +
  theme(plot.title = element_text(size = 14, face = "bold"),
        axis.title = element_text(size = 12),
        axis.text.x = element_text(angle = 30, hjust = 1),
        legend.position = "none") 
ggsave("AP_Scores_by_Teacher.png", width = 7, height = 5, dpi = 300)
