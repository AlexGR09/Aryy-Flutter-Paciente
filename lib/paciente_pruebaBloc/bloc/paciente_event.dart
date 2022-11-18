part of './paciente_bloc.dart';

abstract class PacienteEvent extends Equatable {
  const PacienteEvent();
  @override
  List<Object> get props => [];
}

// Events only support the same type of event, therefore it inherences from PacienteEvent
class AryyChangeEvent extends PacienteEvent {
  final int newIndexEvent;
  const AryyChangeEvent(this.newIndexEvent);
  // override props (the ones from abstract class) in order to identiy event classes
  @override
  // newIndexEvent will identify broadcasted events
  List<Object> get props => [newIndexEvent];
}
