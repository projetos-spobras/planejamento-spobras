export type Json =
  | string
  | number
  | boolean
  | null
  | { [key: string]: Json | undefined }
  | Json[]

export type Database = {
  // Allows to automatically instantiate createClient with right options
  // instead of createClient<Database, { PostgrestVersion: 'XX' }>(URL, KEY)
  __InternalSupabase: {
    PostgrestVersion: "12.2.12 (cd3cf9e)"
  }
  public: {
    Tables: {
      contratos: {
        Row: {
          andamento_concluido: string
          created_at: string | null
          execucao_data_fim: string | null
          execucao_data_inicio: string | null
          id: string
          id_empreendimento: number
          nr_contrato: string
          tipo_contrato_dash: string | null
          updated_at: string | null
          valor_atual: number | null
        }
        Insert: {
          andamento_concluido: string
          created_at?: string | null
          execucao_data_fim?: string | null
          execucao_data_inicio?: string | null
          id?: string
          id_empreendimento: number
          nr_contrato: string
          tipo_contrato_dash?: string | null
          updated_at?: string | null
          valor_atual?: number | null
        }
        Update: {
          andamento_concluido?: string
          created_at?: string | null
          execucao_data_fim?: string | null
          execucao_data_inicio?: string | null
          id?: string
          id_empreendimento?: number
          nr_contrato?: string
          tipo_contrato_dash?: string | null
          updated_at?: string | null
          valor_atual?: number | null
        }
        Relationships: [
          {
            foreignKeyName: "fk_empreendimento"
            columns: ["id_empreendimento"]
            isOneToOne: false
            referencedRelation: "empreendimentos"
            referencedColumns: ["id_empreendimento"]
          },
        ]
      }
      document_uploads: {
        Row: {
          created_at: string | null
          error_message: string | null
          file_name: string
          file_size: number
          id: string
          processed_at: string | null
          processing_time: number | null
          questions_count: number | null
          status: string
          subjects: Json | null
          university: string | null
          updated_at: string | null
          uploaded_at: string | null
          uploaded_by: string
          warnings: Json | null
          year: number | null
        }
        Insert: {
          created_at?: string | null
          error_message?: string | null
          file_name: string
          file_size: number
          id?: string
          processed_at?: string | null
          processing_time?: number | null
          questions_count?: number | null
          status?: string
          subjects?: Json | null
          university?: string | null
          updated_at?: string | null
          uploaded_at?: string | null
          uploaded_by: string
          warnings?: Json | null
          year?: number | null
        }
        Update: {
          created_at?: string | null
          error_message?: string | null
          file_name?: string
          file_size?: number
          id?: string
          processed_at?: string | null
          processing_time?: number | null
          questions_count?: number | null
          status?: string
          subjects?: Json | null
          university?: string | null
          updated_at?: string | null
          uploaded_at?: string | null
          uploaded_by?: string
          warnings?: Json | null
          year?: number | null
        }
        Relationships: []
      }
      empreendimentos: {
        Row: {
          contagem_andamento_concluido: number | null
          created_at: string | null
          empreendimentos: string
          id: string
          id_empreendimento: number
          latitude: number
          longitude: number
          programas: string
          subprefeitura: string | null
          updated_at: string | null
        }
        Insert: {
          contagem_andamento_concluido?: number | null
          created_at?: string | null
          empreendimentos: string
          id?: string
          id_empreendimento: number
          latitude: number
          longitude: number
          programas: string
          subprefeitura?: string | null
          updated_at?: string | null
        }
        Update: {
          contagem_andamento_concluido?: number | null
          created_at?: string | null
          empreendimentos?: string
          id?: string
          id_empreendimento?: number
          latitude?: number
          longitude?: number
          programas?: string
          subprefeitura?: string | null
          updated_at?: string | null
        }
        Relationships: []
      }
      empreendimentos_mapa: {
        Row: {
          created_at: string
          empreendimento: string
          id: string
          latitude: number
          longitude: number
          nr_contrato: string | null
          prioritario: boolean | null
          programa: string
          row_hash: string | null
          status: string
          tipo_contrato: string | null
          updated_at: string
        }
        Insert: {
          created_at?: string
          empreendimento: string
          id?: string
          latitude: number
          longitude: number
          nr_contrato?: string | null
          prioritario?: boolean | null
          programa: string
          row_hash?: string | null
          status: string
          tipo_contrato?: string | null
          updated_at?: string
        }
        Update: {
          created_at?: string
          empreendimento?: string
          id?: string
          latitude?: number
          longitude?: number
          nr_contrato?: string | null
          prioritario?: boolean | null
          programa?: string
          row_hash?: string | null
          status?: string
          tipo_contrato?: string | null
          updated_at?: string
        }
        Relationships: []
      }
      payment_history: {
        Row: {
          amount: number
          created_at: string
          currency: string | null
          id: string
          payment_method: string | null
          plan_type: string
          status: string
          stripe_payment_intent_id: string | null
          stripe_session_id: string | null
          updated_at: string
          user_id: string
        }
        Insert: {
          amount: number
          created_at?: string
          currency?: string | null
          id?: string
          payment_method?: string | null
          plan_type: string
          status: string
          stripe_payment_intent_id?: string | null
          stripe_session_id?: string | null
          updated_at?: string
          user_id: string
        }
        Update: {
          amount?: number
          created_at?: string
          currency?: string | null
          id?: string
          payment_method?: string | null
          plan_type?: string
          status?: string
          stripe_payment_intent_id?: string | null
          stripe_session_id?: string | null
          updated_at?: string
          user_id?: string
        }
        Relationships: []
      }
      profiles: {
        Row: {
          created_at: string
          email: string | null
          full_name: string | null
          id: string
          role: string | null
          stripe_customer_id: string | null
          subscription_expires_at: string | null
          subscription_status: string | null
          updated_at: string
          user_id: string
        }
        Insert: {
          created_at?: string
          email?: string | null
          full_name?: string | null
          id?: string
          role?: string | null
          stripe_customer_id?: string | null
          subscription_expires_at?: string | null
          subscription_status?: string | null
          updated_at?: string
          user_id: string
        }
        Update: {
          created_at?: string
          email?: string | null
          full_name?: string | null
          id?: string
          role?: string | null
          stripe_customer_id?: string | null
          subscription_expires_at?: string | null
          subscription_status?: string | null
          updated_at?: string
          user_id?: string
        }
        Relationships: []
      }
      question_images: {
        Row: {
          caption: string | null
          created_at: string | null
          height: number | null
          id: number
          image_type: string | null
          image_url: string
          option_letter: string | null
          position: number | null
          question_id: string
          width: number | null
        }
        Insert: {
          caption?: string | null
          created_at?: string | null
          height?: number | null
          id?: number
          image_type?: string | null
          image_url: string
          option_letter?: string | null
          position?: number | null
          question_id: string
          width?: number | null
        }
        Update: {
          caption?: string | null
          created_at?: string | null
          height?: number | null
          id?: number
          image_type?: string | null
          image_url?: string
          option_letter?: string | null
          position?: number | null
          question_id?: string
          width?: number | null
        }
        Relationships: [
          {
            foreignKeyName: "question_images_question_id_fkey"
            columns: ["question_id"]
            isOneToOne: false
            referencedRelation: "questions"
            referencedColumns: ["id"]
          },
        ]
      }
      question_options: {
        Row: {
          created_at: string
          has_image: boolean | null
          id: string
          image_url: string | null
          is_correct: boolean
          option_letter: string
          option_text: string
          question_id: string
        }
        Insert: {
          created_at?: string
          has_image?: boolean | null
          id?: string
          image_url?: string | null
          is_correct?: boolean
          option_letter: string
          option_text: string
          question_id: string
        }
        Update: {
          created_at?: string
          has_image?: boolean | null
          id?: string
          image_url?: string | null
          is_correct?: boolean
          option_letter?: string
          option_text?: string
          question_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "question_options_question_id_fkey"
            columns: ["question_id"]
            isOneToOne: false
            referencedRelation: "questions"
            referencedColumns: ["id"]
          },
        ]
      }
      questions: {
        Row: {
          created_at: string
          difficulty_level: string
          explanation: string | null
          has_images: boolean | null
          id: string
          image_url: string | null
          images: Json | null
          question_text: string
          subject_id: string
          university_id: string
          updated_at: string
          year: number
        }
        Insert: {
          created_at?: string
          difficulty_level: string
          explanation?: string | null
          has_images?: boolean | null
          id?: string
          image_url?: string | null
          images?: Json | null
          question_text: string
          subject_id: string
          university_id: string
          updated_at?: string
          year: number
        }
        Update: {
          created_at?: string
          difficulty_level?: string
          explanation?: string | null
          has_images?: boolean | null
          id?: string
          image_url?: string | null
          images?: Json | null
          question_text?: string
          subject_id?: string
          university_id?: string
          updated_at?: string
          year?: number
        }
        Relationships: [
          {
            foreignKeyName: "questions_subject_id_fkey"
            columns: ["subject_id"]
            isOneToOne: false
            referencedRelation: "subjects"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "questions_university_id_fkey"
            columns: ["university_id"]
            isOneToOne: false
            referencedRelation: "universities"
            referencedColumns: ["id"]
          },
        ]
      }
      subjects: {
        Row: {
          category: string | null
          created_at: string
          id: string
          name: string
        }
        Insert: {
          category?: string | null
          created_at?: string
          id?: string
          name: string
        }
        Update: {
          category?: string | null
          created_at?: string
          id?: string
          name?: string
        }
        Relationships: []
      }
      universities: {
        Row: {
          created_at: string
          id: string
          name: string
          short_name: string
        }
        Insert: {
          created_at?: string
          id?: string
          name: string
          short_name: string
        }
        Update: {
          created_at?: string
          id?: string
          name?: string
          short_name?: string
        }
        Relationships: []
      }
      user_answers: {
        Row: {
          answered_at: string
          id: string
          is_correct: boolean
          question_id: string
          selected_option_id: string
          user_id: string
        }
        Insert: {
          answered_at?: string
          id?: string
          is_correct: boolean
          question_id: string
          selected_option_id: string
          user_id: string
        }
        Update: {
          answered_at?: string
          id?: string
          is_correct?: boolean
          question_id?: string
          selected_option_id?: string
          user_id?: string
        }
        Relationships: [
          {
            foreignKeyName: "user_answers_question_id_fkey"
            columns: ["question_id"]
            isOneToOne: false
            referencedRelation: "questions"
            referencedColumns: ["id"]
          },
          {
            foreignKeyName: "user_answers_selected_option_id_fkey"
            columns: ["selected_option_id"]
            isOneToOne: false
            referencedRelation: "question_options"
            referencedColumns: ["id"]
          },
        ]
      }
      user_roles: {
        Row: {
          created_at: string
          id: string
          role: Database["public"]["Enums"]["app_role"]
          user_id: string
        }
        Insert: {
          created_at?: string
          id?: string
          role: Database["public"]["Enums"]["app_role"]
          user_id: string
        }
        Update: {
          created_at?: string
          id?: string
          role?: Database["public"]["Enums"]["app_role"]
          user_id?: string
        }
        Relationships: []
      }
    }
    Views: {
      [_ in never]: never
    }
    Functions: {
      check_expired_subscriptions: { Args: never; Returns: undefined }
      count_questions_with_filters: {
        Args: {
          p_difficulty?: string
          p_subject_id?: string
          p_university_id?: string
          p_year?: number
        }
        Returns: number
      }
      create_superadmin_user: {
        Args: {
          user_email: string
          user_full_name: string
          user_password: string
        }
        Returns: string
      }
      get_difficulty_performance: { Args: { p_user_id: string }; Returns: Json }
      get_questions_with_status: {
        Args: {
          p_difficulty?: string
          p_limit?: number
          p_offset?: number
          p_subject_id?: string
          p_university_id?: string
          p_user_id: string
          p_year?: number
        }
        Returns: {
          answered: boolean
          created_at: string
          difficulty_level: string
          id: string
          is_correct: boolean
          question_text: string
          subject_name: string
          university_name: string
          university_short_name: string
          year: number
        }[]
      }
      get_subjects_with_questions: {
        Args: never
        Returns: {
          category: string
          id: string
          name: string
          question_count: number
        }[]
      }
      get_universities_with_questions: {
        Args: never
        Returns: {
          id: string
          name: string
          question_count: number
          short_name: string
        }[]
      }
      get_user_analytics: { Args: { p_user_id: string }; Returns: Json }
      get_user_current_streak: { Args: { p_user_id: string }; Returns: Json }
      get_user_progress_timeline: { Args: { p_user_id: string }; Returns: Json }
      get_user_stats: {
        Args: { p_user_id: string }
        Returns: {
          accuracy: number
          subjects_studied: number
          total_answered: number
          total_correct: number
          universities_attempted: number
        }[]
      }
      has_role: {
        Args: {
          _role: Database["public"]["Enums"]["app_role"]
          _user_id: string
        }
        Returns: boolean
      }
      is_superadmin: { Args: never; Returns: boolean }
    }
    Enums: {
      app_role: "superadmin" | "admin" | "moderator" | "user"
    }
    CompositeTypes: {
      [_ in never]: never
    }
  }
}

type DatabaseWithoutInternals = Omit<Database, "__InternalSupabase">

type DefaultSchema = DatabaseWithoutInternals[Extract<keyof Database, "public">]

export type Tables<
  DefaultSchemaTableNameOrOptions extends
    | keyof (DefaultSchema["Tables"] & DefaultSchema["Views"])
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
        DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? (DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"] &
      DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Views"])[TableName] extends {
      Row: infer R
    }
    ? R
    : never
  : DefaultSchemaTableNameOrOptions extends keyof (DefaultSchema["Tables"] &
        DefaultSchema["Views"])
    ? (DefaultSchema["Tables"] &
        DefaultSchema["Views"])[DefaultSchemaTableNameOrOptions] extends {
        Row: infer R
      }
      ? R
      : never
    : never

export type TablesInsert<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Insert: infer I
    }
    ? I
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Insert: infer I
      }
      ? I
      : never
    : never

export type TablesUpdate<
  DefaultSchemaTableNameOrOptions extends
    | keyof DefaultSchema["Tables"]
    | { schema: keyof DatabaseWithoutInternals },
  TableName extends DefaultSchemaTableNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"]
    : never = never,
> = DefaultSchemaTableNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaTableNameOrOptions["schema"]]["Tables"][TableName] extends {
      Update: infer U
    }
    ? U
    : never
  : DefaultSchemaTableNameOrOptions extends keyof DefaultSchema["Tables"]
    ? DefaultSchema["Tables"][DefaultSchemaTableNameOrOptions] extends {
        Update: infer U
      }
      ? U
      : never
    : never

export type Enums<
  DefaultSchemaEnumNameOrOptions extends
    | keyof DefaultSchema["Enums"]
    | { schema: keyof DatabaseWithoutInternals },
  EnumName extends DefaultSchemaEnumNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"]
    : never = never,
> = DefaultSchemaEnumNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[DefaultSchemaEnumNameOrOptions["schema"]]["Enums"][EnumName]
  : DefaultSchemaEnumNameOrOptions extends keyof DefaultSchema["Enums"]
    ? DefaultSchema["Enums"][DefaultSchemaEnumNameOrOptions]
    : never

export type CompositeTypes<
  PublicCompositeTypeNameOrOptions extends
    | keyof DefaultSchema["CompositeTypes"]
    | { schema: keyof DatabaseWithoutInternals },
  CompositeTypeName extends PublicCompositeTypeNameOrOptions extends {
    schema: keyof DatabaseWithoutInternals
  }
    ? keyof DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"]
    : never = never,
> = PublicCompositeTypeNameOrOptions extends {
  schema: keyof DatabaseWithoutInternals
}
  ? DatabaseWithoutInternals[PublicCompositeTypeNameOrOptions["schema"]]["CompositeTypes"][CompositeTypeName]
  : PublicCompositeTypeNameOrOptions extends keyof DefaultSchema["CompositeTypes"]
    ? DefaultSchema["CompositeTypes"][PublicCompositeTypeNameOrOptions]
    : never

export const Constants = {
  public: {
    Enums: {
      app_role: ["superadmin", "admin", "moderator", "user"],
    },
  },
} as const
